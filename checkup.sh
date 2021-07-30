#!/bin/bash

SPECIAL=';packages;pgme;fdi;htmlhelp;'
EXCLUDE=';txt;docinfo;htm;html;'
LANGUAGES=''
APPLANGS=''
APPS=0
LANGS=0
TRANS=0
PLATFORM="$(uname)"
KEYFILE_ERR="translation file"
DEBUGGING=pkgtools
unset DEBUGGING

function script_header () {
    echo "When listing languages for a specific program, the language maybe followed"
    echo "by a special character. Those characters mean the translation file failed"
    echo "a specific test."
    echo
    echo "  ? unable to locate default English version"
    echo "  ! caution, English version is newer than translation"
    echo "  * problem, either missing or extras keys"
    echo
}

function script_summary () {
    script_header
    echo "Also note, this utility does not scan the following directories:"
    echo
    x="${SPECIAL:1:$(( ${#SPECIAL} - 2))}"
    x="${x//;/, }"
    echo "  ${x}"
    echo
    x="${EXCLUDE:0:$(( ${#EXCLUDE} - 1))}"
    x="${x//;/, }"
    x="${x:2}"
    echo "and does not compare '${x}' file types or subdirectories."

}

function script_help () {

    echo "usage: ${0##*/} [program]"
    echo
    script_summary
}

if [[ "$(uname)" == "Darwin" ]] ; then
	DARWIN=yes
else
	unset DARWIN
fi

UPPER_CHARS='ABCDEFGHIJKLMNOPQRSTUVWXYZ'
LOWER_CHARS='abcdefghijklmnopqrstuvwxyz'
SPACE_CHARS=' '

while [[ ${#SPACE_CHARS} -lt 128 ]] ; do
	SPACE_CHARS="${SPACE_CHARS}${SPACE_CHARS}"
done

function upperCase () {

	local s="${*}"
	if [[ ${DARWIN} ]] ; then
		# unfortunately cannot use the simple ${var^^} on OS-X to convert to upper case
	    local out c i
		for (( i=0;i<${#s};i++ )) ; do
			c="${s:${i}:1}"
			if [[ "${LOWER_CHARS//${c}}" != "${LOWER_CHARS}" ]] ; then
				c="${LOWER_CHARS%${c}*}"
				c="${UPPER_CHARS:${#c}:1}"
			fi
			out="${out}${c}"
		done
		echo "${out}"
	else
		echo "${s^^}"
	fi

}

function lowerCase () {

    local s="${*}"
	if [[ ${DARWIN} ]] ; then
		# unfortunately cannot use the simple ${var,,} on OS-X to convert to lower case
		local out c i t
		for (( i=0;i<${#s};i++ )) ; do
			c="${s:${i}:1}"
			if [[ "${c//[A-Z]}" != "${c}" ]] ; then
				t="${UPPER_CHARS%${c}*}"
				t="${LOWER_CHARS:${#t}:1}"
				[[ "${t}" != "" ]] && c="${t}"
			fi
			out="${out}${c}"
		done
		echo "${out}"
	else
		echo "${s,,}"
	fi

}

function get_stamp () {

    local ret=0
    stat -f %m "${1}" 2>/dev/null || ret=$?
    if [[ $ret -ne 0 ]] ; then
        echo 0
        return 1
    fi
    return 0
}

function load_nls () {

    # echo load "${2}"
    unset ${1}
    local line flag hold t
    if [[ -f "${2}" ]] ; then
        hold=$( while [[ ! $flag ]] ; do
            read -r line || flag=done
            line="${line//[$'\t\r\n']}"
            line="${line#${line%%[![:space:]]*}}"
            line="${line%${line##*[![:space:]]}}"
            t="${line}"
            line="${line%%:*}"
            line="${line%%=*}"
            [[ "${line}" == "" ]] && continue
            [[ "${t}" == "${line}" ]] && continue
            line="${line%${line##*[![:space:]]}}"
            [[ "${line// }" != "${line}" ]] && continue
            [[ "${line:0:1}" == "#" ]] && continue
            [[ "${line:0:1}" == ";" ]] && continue
            echo "${line};"
        done< "${2}" | sort -u )
    else
        hold="${2}"
    fi
    hold="${hold//[$'\t\r\n']}"
    if [[ "${hold}" != "" ]] ; then
        read -r ${1} <<<";${hold}"
    elif [[ "${2}" != "${EN}" ]] ; then
        EN_DATA="${EN}"
    fi

}

function compare_nls () {

    local t x d n
    local p="${1%/*}"
    p="${p##*/}"
    EN_CMP=''
    if [[ ${EN_STAMP} -eq 0 ]] ; then
        EN_CMP='?'
    elif [[ "${p}" == "nls" ]] ; then
        [[ "${EN_DATA}" == "" ]] && load_nls EN_DATA "${EN}"
        unset NLS_DATA
        load_nls NLS_DATA "${1}"
        if [[ "${EN_DATA}" == "${EN}" ]] ; then
            UC=yes
        elif [[ "${NLS_DATA}" != "${EN_DATA}" ]] ; then
            EN_CMP="*"

            [[ ${NO_REP} ]] && return 0
            t="${EN_DATA}"
            d=
            while [[ ${#t} -ne 0 ]] ; do
                x="${t%%;*}"
                t="${t:$(( ${#x} + 1 ))}"
                n="${NLS_DATA//;${x};/;}"
                if [[ "${n}" == "${NLS_DATA}" ]] ; then
                    d="${d};${x}"
                else
                    NLS_DATA="${n}"
                fi
            done
            d="${d//;;/;}"
            d="${d:1}"
            if [[ "${d}" != '' ]] ; then
                [[ ! ${KEY_BR} ]] && echo
                KEY_BR=yes
                echo "${KEYFILE_ERR} '${1}' is missing key(s): '${d//;/, }'"
            fi
            d="${NLS_DATA//;;/;}"
            [[ ${#d} -gt 1 ]] && d="${d:1:$(( ${#d} - 2 ))}" || d=''
            if [[ "${d}" != '' ]] ; then
                [[ ! ${KEY_BR} ]] && echo
                KEY_BR=yes
                echo "${KEYFILE_ERR} '${1}' has extra key(s): '${d//;/, }'"
            fi
        # else
            # echo "${1}"
            # echo "${EN_DATA}"
            # echo "${NLS_DATA}"
            # echo
        fi
    else
        UC=yes
    fi

    if [[ "${EN_CMP}" == "" ]] ; then
        t=$(get_stamp "${1}")
        [[ ${t} -lt ${EN_STAMP} ]] && EN_CMP='!'
    fi

    return 0

}

function lang_of_nls () {

    local t=$(echo "${1}" | tr "[:upper:]" "[:lower:]")
    t="${t##*/}"
    t="${t#*.}"
    t="${t%.*}"
    [[ "${EXCLUDE//;${t};}" != "${EXCLUDE}" ]] && return 0
    echo "${t}"

}

function calc_add_language () {

    local i="${1}"
    local x="${i//\*}"
    x="${x//!}"
    x="${x//\?}"
    [[ "${x}" == "" ]] && return 0
    [[ "${LANGUAGES}" = '' ]] && LANGUAGES=";"
    [[ "${APPLANGS}" = '' ]] && APPLANGS=";"
    if [[ "${LANGUAGES//;${x};}" == "${LANGUAGES}" ]] ; then
        LANGUAGES="${LANGUAGES}${x};"
        (( LANGS++ ))
    fi
    if [[ "${APPLANGS//;${i};}" == "${APPLANGS}" ]] && \
    [[ "${APPLANGS//;${i}\*;}" == "${APPLANGS}" ]] && \
    [[ "${APPLANGS//;${i}\?;}" == "${APPLANGS}" ]] && \
    [[ "${APPLANGS//;${i}!;}" == "${APPLANGS}" ]] \
     ; then
        APPLANGS="${APPLANGS}${i};"
    fi

}

function calc_dir_languages () {

    [[ ! -d "${1}" ]] && return 1
    local i utf l
    unset EN
    unset EN_STAMP
    unset EN_DATA
    for i in "${1}"/* ; do
        [[ ! -e "${i}" ]] && continue
        if [[ "${EN}" == "" ]] ; then
            EN="${1}/${1%%/*}.en"
            [[ ! -e "${EN}" ]] && EN="${1}/$(lowerCase ${1%%/*}).en"
            [[ ! -e "${EN}" ]] && EN="${1}/$(upperCase ${1%%/*}).EN"
            # echo "English version $EN"
            EN_STAMP=$(get_stamp "${EN}")
            # echo "Timestamp $EN_STAMP"
            [[ ! -e "${EN}" ]] && UC=fail
        fi
        utf=$(ls -1d "${i}"* 2>/dev/null | grep -i "${i}\.utf-8" )
        [[ "${utf}" != "" ]] && continue
        l=$(lang_of_nls "${i}")
        [[ "${l}" == "" ]] && continue

        if [[ "${l}" == 'en' ]] || [[ "${l}" == 'EN' ]] ; then
            calc_add_language "${l}"
        else
            compare_nls "$i"
            calc_add_language "${l}${EN_CMP}"
        fi
        (( TRANS++ ))
    done

    return 0
}

function calc_src_languages () {

    [[ ! -d "${1}" ]] && return 1
    US=yes
    local i utf l
    for i in "${1}"/* ; do
        [[ ! -e "${i}" ]] && continue
        utf=$(ls -1d "${i}"* 2>/dev/null | grep -i "${i}\.utf-8" )
        [[ "${utf}" != "" ]] && continue
        case "${1%%/*}" in
            ctmouse)
                i="${i//.MSG}"
                i="${i//CTM-/CTM.}"
                :;
            ;;
            mkeyb)
                return 1
            ;;
            *)
            calc_dir_languages ${1%%/*}/source
            return $?
        esac
        l=$(lang_of_nls "${i}")
        [[ "${l}" == "" ]] && continue
        calc_add_language "${l}?"
        (( TRANS++ ))
    done
    return 0
}

function calc_languages () {
    # [[ "${1/pkgtools}" == "${1}" ]] && return 0
    APPLANGS=''
    local prog
    unset UC
    unset KEY_BR
    calc_dir_languages ${1}/nls && prog=y
    calc_dir_languages ${1}/doc && prog=y
    calc_dir_languages ${1}/help && prog=y
    calc_src_languages ${1}/source && prog=y

    if [[ "${prog}" == "y" ]] ; then
        (( APPS++ ))
        APPLANGS="${APPLANGS:1:$(( ${#APPLANGS} - 2))}"
        APPLANGS="${APPLANGS//;/, }"
        /bin/echo -n "${1}: ${APPLANGS}"
        [[ ${UC} ]] && /bin/echo -n " (compare manually)"
        echo
        sleep 1
    fi

    return 0

}

function each_app () {

    local app
    for app in * ; do
        [[ ! -d "${app}" ]] && continue
        [[ "${SPECIAL//;${app};}" != "${SPECIAL}" ]] && continue

        if [[ ${DEBUGGING} ]] ; then
            if [[ "${app}" != "${DEBUGGING}" ]]; then
                # echo  "DEBUG SKIP: ${1} ${app}"
                continue
            else
                echo "DEBUG: ${1} ${app}"
            fi
        fi
        ${1} ${app}
    done

}

function scan_summary () {
    echo
    echo "${APPS} total programs, ${LANGS} total languages, ${TRANS} total translations"
    LANGUAGES=$(for i in ${LANGUAGES//;/ } ; do echo "${i}, "; done | sort | tr -d "[:cntrl:]")
    [[ "${LANGUAGES}" != "" ]] && LANGUAGES="${LANGUAGES:0:$(( ${#LANGUAGES} - 2))}" || LANGUAGES="(none)"
    echo "Languages: ${LANGUAGES}"
}

function create_report () {

    local out="report.txt"
    echo "Generating '${out}'"
    echo "Report date: $(date)" | tee "${out}"
    echo | tee -a "${out}"
    script_summary | tee -a "${out}"
    echo | tee -a "${out}"
    echo "Translation file overview:" | tee -a "${out}"
    echo | tee -a "${out}"
    ${0} -n -s | tee -a "${out}"
    echo | tee -a "${out}"
    echo "(index comparison is filtered through grep, so output may not be displayed until complete)"
    echo "Translation file index key comparison:" | tee -a "${out}"
    echo | tee -a "${out}"
    each_app calc_languages | grep "^${KEYFILE_ERR}" | tee -a "${out}"

}

function main () {

    local opt i
    local once=yes

    while [[ "${1}" != "" ]] || [[ $once ]]; do
        opt="${1}"
        shift
        if [[ "${opt}" == "-h" ]] || [[ "${opt}" == "--help" ]] ; then
            script_help
            return 0
        elif [[ "${opt}" == "-n" ]] ; then
            NO_REP=yes      # don't show key comparisons
        elif [[ "${opt}" == "-s" ]] || [[ "${opt}" == "" ]] ; then
            # summary
            [[ $once ]] && script_header;
            each_app calc_languages
            scan_summary
        elif [[ "${opt}" == "-r" ]] ; then
            create_report
        else
            # summary
            [[ $once ]] && script_header;
            calc_languages "${opt}"
        fi
        unset once
    done



}

main ${@}
