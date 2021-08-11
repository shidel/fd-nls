#!/bin/bash

EXCEPT=';packages;fdi;htmlhelp;'
SPECIAL=';pgme;'
EXCLUDE=';txt;docinfo;htm;html;'
LANGUAGES=''
APPLANGS=''
APPS=0
LANGS=0
TRANS=0
PLATFORM="$(uname)"
KEYFILE_ERR="translation file"
unset CHECK_PGME

DEBUGGING=";pkgtools;pgme;pause;"
unset DEBUGGING

function script_header () {
    echo "When listing languages for a specific program, the language maybe followed"
    echo "by a special character. Those characters mean the translation file failed"
    echo "a specific test."
    echo
    echo "  ? unable to locate default English version"
    echo "  ! caution, English version is newer than translation"
    echo "  + caution, has some extras keys and probably nothing to worry about"
    echo "  * problem, either missing (and maybe extras keys)"
    echo
}

function script_summary () {
    script_header
    echo "Also note, this utility does not scan the following directories:"
    echo
    x="${EXCEPT:1:$(( ${#EXCEPT} - 2))}"
    x="${x//;/, }"
    echo "  ${x}"
    echo
    x="${EXCLUDE:0:$(( ${#EXCLUDE} - 1))}"
    x="${x//;/, }"
    x="${x:2}"
    echo "and does not compare '${x}' file types or subdirectories."
    echo
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

function leftTrim () {
    local x="$@"
    local t=""
    while [[ "${t}" != "$x" ]] ; do
        t="${x}"
        x="${x#${x%%[![:space:]]*}}"
    done
    echo "${x}"
}

function rightTrim () {
    local x="$*"
    local t=""
    while [[ "${t}" != "$x" ]] ; do
        t="${x}"
        x="${x%${x##*[![:space:]]}}"
    done
    echo "${x}"
}

function trim () {
    local x=$(rightTrim "$@")
    x=$(leftTrim "$x")
    echo "$x"
}

function fileCaseItem() {
	local line i x t r q
	if [[ "${1}" == '-q' ]] ; then
		shift
		q=yes
	fi
	i=$(lowerCase "${1##*/}")
	x="${1%/*}"
	while read line ; do
		t=$(lowerCase "${line##*/}")
		if [[ "${i}" == "${t}" ]] ; then
			echo "${line}"
			return 0
		fi
	done<<<$(ls -a1d "${1%/*}"/* 2>/dev/null )
	if [[ "${q}" != '' ]] ; then
		echo "unable to match file name case for '${1}'" | errorlog
	fi
	return 1
}

function fileCase () {

	# files should always be relevant to the current dir
	# so / causes failure on purpose

	local q
	if [[ "${1}" == '-q' ]] ; then
		shift
		q='-q'
	fi

	# if [[ "${1}" != '-a' ]] ; then
	#	fileCaseItem ${q} "${@}" || return 1
	# else
	#	shift

	if [[ "${1}" == '-a' ]] ; then
		shift
	fi

		local i="${1}"
		if [[ -e "${i}" ]] ; then
			echo "${i}"
			return 0
		fi
		local o s x
		if [[ "${i%/*}/" == "${i}" ]] ; then
			x='/'
			i="${i%/*}"
		fi
		while [[ ${#i} -ne 0 ]] ; do
			s="${i%%/*}"
			if [[ ${#o} -eq 0 ]] ; then
				[[ ${#s} -eq 0 ]] && o='/' || o="./${s}"
			else
				[[ ${#s} -eq 0 ]] && continue || o="${o}/${s}"
			fi
			# echo -n "${o}->" >&2
			o=$(fileCaseItem ${q} "${o}") || return $?
			# echo "${o}" >&2
			i="${i:1}"
			i="${i:${#s}}"
		done
		[[ -d "${o}" ]] && [[ "${x}" != '' ]] && [[ "${o%/*}/" != "${o}" ]] && o="${o}/"
		echo ${o}
	# fi
	return 0
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

    unset EN
    unset EN_STAMP
    unset EN_DATA
    local t x d n
    local p="${1%/*}"
    p="${p##*/}"
    EN_CMP=''
    local EN=$(upperCase "${1##*/}")
    [[ "${EN%.UTF*}" != "${EN}" ]] && EN="${EN%.*}"
    EN="${EN%.*}"
    EN="${1%/*}/${EN}.en"
    EN=$(fileCase -a "${EN}")
    if [[ ! -e "${EN}" ]] ; then
        unset EN
        UC="${UC}, NO EN"
        EN_CMP='?'
    else
        # echo "English version $EN"
        EN_STAMP=$(get_stamp "${EN}")
        # echo "Timestamp $EN_STAMP"
        [[ ! -e "${EN}" ]] && UC="${UC}, EN FAIL"

    fi
    if [[ ${EN_STAMP} -eq 0 ]] ; then
        EN_CMP='?'
    elif [[ "${p}" == "nls" ]] ; then
        [[ "${EN_DATA}" == "" ]] && load_nls EN_DATA "${EN}"
        unset NLS_DATA
        load_nls NLS_DATA "${1}"
        if [[ "${EN_DATA}" == "${EN}" ]] ; then
            [[ "${UCP//;${p};}" == "${UCP}" ]] && UCP="${UCP};${p};"
            UC=yes
        elif [[ "${NLS_DATA}" != "${EN_DATA}" ]] ; then
            EN_CMP="@"

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
            while [[ "${d:0:1}" == ';' ]]; do
                d="${d:1}"
            done
            if [[ "${d}" != '' ]] ; then
                EN_CMP="*"
                echo "${KEYFILE_ERR} '${1}' is missing key(s): '${d//;/, }'"
            fi
            t="${NLS_DATA}"
            d=
            while [[ ${#t} -ne 0 ]] ; do
                x="${t%%;*}"
                t="${t:$(( ${#x} + 1 ))}"
                [[ "${x}" == "" ]] && continue
                if [[ "${x:0:5}" != "HELP." ]] && [[ "${x:0:5}" != "HELP_" ]] ; then
                    d="${d};${x}"
                fi
            done
            while [[ "${d:0:1}" == ';' ]]; do
                d="${d:1}"
            done
            if [[ "${d}" != '' ]] ; then
                [[ "${EN_CMP}" == "@" ]] && EN_CMP="+"
                echo "${KEYFILE_ERR} '${1}' has extra key(s): '${d//;/, }'"
            fi
        # else
            # echo "${1}"
            # echo "${EN_DATA}"
            # echo "${NLS_DATA}"
            # echo
        fi
    else
        [[ "${UCP//;${p};}" == "${UCP}" ]] && UCP="${UCP};${p};"
        UC="${UC}, OTHER DIR"
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
    for i in "${1}"/* ; do
        [[ ! -e "${i}" ]] && continue
        utf=$(upperCase "${i##*/}")
        [[ "${utf//UTF-8}" != "${utf}" ]] && continue
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
    UC="${UC}, SRC DIR"
    local p="${1##*/}"
    [[ "${UCP//;${p};}" == "${UCP}" ]] && UCP="${UCP};${p};"
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
    unset UCP
    calc_dir_languages ${1}/nls && prog=y
    calc_dir_languages ${1}/doc && prog=y
    calc_dir_languages ${1}/help && prog=y
    calc_src_languages ${1}/source && prog=y

    if [[ "${prog}" == "y" ]] ; then
        (( APPS++ ))
        APPLANGS="${APPLANGS:1:$(( ${#APPLANGS} - 2))}"
        APPLANGS="${APPLANGS//;/, }"
        /bin/echo -n "${1}: ${APPLANGS}"
        UCP="${UCP//;;/, }"
        UCP="${UCP//;/}"
        [[ "${UCP}" != "" ]] && UCP="'${UCP}' "
        [[ ${UC} ]] && /bin/echo -n " (compare ${UCP}manually)" #  Show UC for reason codes
        echo
        sleep 1
    fi

    return 0

}

function cfg_section () {
    local found line sec="${1}"
    [[ "${sec}" == '*' ]] && sec='\*'
    while IFS=''; read -r line ; do
        line="${line//[[:cntrl:]]}"
        line=$(leftTrim "${line}")
        [[ "${line// }" == "" ]] && continue
        if [[ ! ${found} ]] ; then
            line=$(rightTrim "${line}")
            if [[ "${line//\[${sec}\]}" == "" ]] ; then
                found=true
            fi
        else
            [[ "${line:0:1}" = "[" ]] && break
            [[ "${line:0:2}" = "+=" ]] && continue
            if [[ "${2}" == '-x' ]] ; then
                echo "${line%%=*}"
                break
            else
                echo "${line}"
            fi
        fi
    done
}

function cfg_all () {
    local found line xx t
    while IFS=''; read -r line ; do
        line="${line//[$'\t\r\n']}"
        line=$(leftTrim "${line}")
        [[ "${line// }" == "" ]] && continue
        if [[ ! ${found} ]] ; then
            line=$(rightTrim "${line}")
            if [[ "${line//\[\*\]}" == "" ]] ; then
                found=maybe
            fi
        elif [[ "${found}" == "maybe" ]] ; then
            [[ "${line:0:$(( ${#3} + 2 ))}" = "[${3}]" ]] && found=true
        elif [[ "${line:0:1}" = "[" ]] ; then
            break
        elif [[ "${line:0:2}" = "+=" ]] ; then
            [[ "${xx}" != '' ]] && echo "${xx}"
            xx=
        else
            t="$(trim ${line#*=})"
            if [[ "${t}" != '' ]] || [[ "${2}" != "-x" ]] ; then
                echo "${line%%=*}="
                xx=
            else
                xx="${line%%=*}="
            fi
        fi
    done< "${1}" | sort
}

function load_sections () {

    local line flag t hold
    if [[ -f "${1}" ]] ; then
        /bin/echo -n ";"
        while [[ ! $flag ]] ; do
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
            /bin/echo -n "${line};"
        done<<<"$(cfg_all ${1} ${2} ${3})"
    fi
}

function compare_pgme () {

    local t x d n ht hd
    local sec="${4}"
    local p="${3%/*}"
    p=$(lowerCase "${p##*/}")
    # if [[ ! ${EN} ]] ; then
        local EN="${3%%/*}/defaults/${1}"
        [[ "${p}" == "language" ]] && EN="${EN}.LNG"
        EN=$(fileCase -a "${EN}")
        if [[ ! -e "${EN}" ]] ; then
            unset EN
            echo "$1, unable to locate English version" >&2
            return 0
        else
            # echo "English version $EN"
            EN_STAMP=$(get_stamp "${EN}")
            # echo "Timestamp $EN_STAMP"
            if [[ ${EN_STAMP} -eq 0 ]] ; then
                unset EN
                echo "$1, internal error"
                return 0
            fi

        fi
        # echo "Reading ${EN} [${sec}]" >&2
        EN_DATA=$(load_sections "${EN}" -x "${sec}")
    # fi


    # echo "Reading ${3} [${sec}]" >&2
    NLS_DATA=$(load_sections "${3}" -a "${sec}")

    ht="${EN_DATA}"
    t=
    d=
    hd=
    /bin/echo -n "comparing ${1}, ${2} [${sec}]" >&2
    while [[ ${#t} -ne 0 ]] || [[ ${#ht} -ne 0 ]] ; do
        if [[ ${#t} -lt 250 ]] ; then
            t="${t}${ht:0:500}"
            ht="${ht:500}"
        fi
        x="${t%%;*}"
        t="${t:$(( ${#x} + 1 ))}"
        if [[ "${x}" == '' ]] ; then
            /bin/echo -n ' ' >&2
            continue
        fi
        n="${NLS_DATA/;${x};/;}"
        if [[ "${#n}" == "${#NLS_DATA}" ]] ; then
            /bin/echo -n 'X' >&2
            d="${d};${x}"
            if [[ ${#d} -gt 500 ]] ; then
                hd="${hd}${d}"
                d=
            fi;
        else
            /bin/echo -n '.' >&2
            NLS_DATA="${n}"
        fi
    done
    echo >&2
    d="${hd}${d}"
    d="${d//;;/;}"
    d="${d:1}"
    if [[ "${d}" != '' ]] ; then
        EN_CMP="*"
        echo "${KEYFILE_ERR} '${3}' is missing key(s): [${sec}] '${d//;/, }'"
    fi
    d="${NLS_DATA//;;/;}"
    [[ ${#d} -gt 1 ]] && d="${d:1:$(( ${#d} - 2 ))}" || d=''
    #if [[ "${d}" != '' ]] ; then
    #    [[ "${EN_CMP}" == "@" ]] && EN_CMP="+"
    #    echo "${KEYFILE_ERR} '${3}' has extra key(s): [${sec}] '${d//;/, }'"
    #fi

    t=$(get_stamp "${3}")

    if [[ "${EN_CMP}" == "*" ]] ; then
         [[ "${5}" == '-x' ]] && echo "${1}, ${2} has issues" >&2
    elif [[ ${t} -lt ${EN_STAMP} ]] ; then
        [[ "${5}" == '-x' ]] && echo "${1}, ${2} is older than English version" >&2
        EN_CMP='!'
    fi

    if [[ "${EN_CMP}" == "@" ]] ; then
        [[ "${5}" == '-x' ]] && echo "${1}, ${2} looks fine" >&2
    fi
    return 0

}


function special_pgme () {

    if [[ ! ${CHECK_PGME} ]] ; then
        echo "pgme: (not compared, very timeconsuming)"
        return 0
    fi
    local lfile lfiles lname cfg app appl apps appls tappls xapp sec lsec tsec x
    local msg
    APPLANGS=''
    lsec='HELP;STRINGS;KEYNAMES'
    for lfile in pgme/language/* ; do
        [[ ! -e "${lfile}" ]] && continue
        lname="${lfile##*/}"
        lname=$(upperCase "${lname%.*}")
        [[ "${lname}" == 'DEFAULT' ]] && continue
        [[ "${lname}" == 'EN-US' ]] && continue
        [[ "${lname}" == 'EN_US' ]] && continue
        cfg=$(cfg_section '*'<${lfile})
        app=$(cfg_section 'HELP' -x<${lfile})
        appl=$(echo "$cfg" | grep "^ID=" | cut -d '=' -f 2)
        case $(upperCase "${appl}") in
            'FRENCH') appl="FR";;
            'SPANISH') appl="ES";;
            'TURKISH') appl="TR";;
        esac
        [[ "${apps//;${app};}" == "${apps}" ]] && apps="${apps};${app};"
        [[ "${appls//;${appl};}" == "${appls}" ]] && appls="${appls};${appl};"
        lfiles="${lfiles};${app}.${appl}=${lfile};"
    done
    while [[ ${apps} ]] ; do
        app="${apps%%;*}"
        apps="${apps:$((${#app} + 1))}"
        [[ ! ${app} ]] && continue
        case "${app}" in
            "PGM")       xapp='ETERNITY';;
            "INSTALLER") xapp="INSTALL";;
            *)           xapp="${app}"
        esac
        tappls="${appls}"
        unset EN_DATA
        unset EN
        unset EN_STAMP
        msg="${2}, $(lowerCase ${xapp}):"
        while [[ ${tappls} ]] ; do
            unset UC
            unset UCP
            EN_CMP="@"
            appl="${tappls%%;*}"
            tappls="${tappls:$((${#appl} + 1))}"
            [[ ! ${appl} ]] && continue
            lfile="${lfiles##*;${app}.${appl}=}"
            lfile="${lfile%%;*}"
            [[ "$lfile" == '' ]] && continue # no translation in this language
            tsec="${lsec}"
            while [[ ${#tsec} -gt 0 ]]; do
                sec="${tsec%%;*}"
                tsec="${tsec:$(( ${#sec} + 1 ))}"
                [[ ${#tsec} -eq 0 ]] && x=-x || x=
                compare_pgme "${xapp}" "${appl}" "${lfile}" "${sec}" "${x}"
            done
            msg="${msg} $(lowerCase ${appl})"
            [[ "${EN_CMP}" != "@" ]] && msg="${msg}${EN_CMP}"
            msg="${msg},"
            # echo $UC, $UCP
        done
        echo "${msg:0:$(( ${#msg} - 1))} (language files only)"
    done

}

function each_app () {

    local app
    for app in * ; do
        [[ ! -d "${app}" ]] && continue
        [[ "${EXCEPT//;${app};}" != "${EXCEPT}" ]] && continue

        if [[ ${DEBUGGING} ]] ; then
            if [[ "${DEBUGGING//;${app};}" == "${DEBUGGING}" ]]; then
                # echo  "DEBUG SKIP: ${1} ${app}"
                continue
            else
                echo "DEBUG: ${1} ${app}" >&2
            fi
        fi

        if [[ "${SPECIAL//;${app};}" != "${SPECIAL}" ]] ; then
            special_${app} ${1} ${app}
        else
            ${1} ${app}
        fi
    done

}

function scan_summary () {
    echo
    echo "${APPS} total programs, ${LANGS} total languages, ${TRANS} total translations"
    LANGUAGES=$(for i in ${LANGUAGES//;/ } ; do echo "${i}, "; done | sort | tr -d "[:cntrl:]")
    [[ "${LANGUAGES}" != "" ]] && LANGUAGES="${LANGUAGES:0:$(( ${#LANGUAGES} - 2))}" || LANGUAGES="(none)"
    echo "Languages: ${LANGUAGES}"
}

function do_report () {
    echo "Generating '${1}'"
    echo "Report date: $(date)"
    echo
    script_summary
    echo
    echo "Translation file overview:"
    echo
    each_app calc_languages
    echo
    echo "Translation file index key comparison:"
    echo
}

function filter_out () {
    local out="${1}"
    local l
    while IFS=''; read -r l ; do
        if [[ "${l:0:${#KEYFILE_ERR}}" == "${KEYFILE_ERR}" ]] ; then
            echo "${l}" >>"${out}"
        else
            echo "${l}"
        fi
    done
}

function create_report () {

    local out="report"
    [[ -f "${out}.bak" ]] && rm "${out}.bak" >/dev/null 2>&1
    [[ -f "${out}.txt" ]] && mv "${out}.txt" "${out}.bak">/dev/null 2>&1
    [[ -f "${out}.tmp" ]] &&  rm "${out}.tmp" >/dev/null 2>&1
    touch "${out}.txt"
    touch "${out}.tmp"
    do_report "${out}.txt" | filter_out "${out}.tmp" | tee -a "${out}.txt"
    # each_app calc_languages | grep "^${KEYFILE_ERR}" | tee -a "${out}"
    cat "${out}.tmp" | grep -i "is missing" | tee -a "${out}.txt"
    echo | tee -a "${out}.txt"
    echo "(please note that extra KEYS are probably fine and some are filtered out)" | tee -a "${out}.txt"
    echo | tee -a "${out}.txt"
    cat "${out}.tmp" | grep -i "has extra" | tee -a "${out}.txt"
    [[ -f "${out}.tmp" ]] &&  rm "${out}.tmp" >/dev/null 2>&1
    echo | tee -a "${out}.txt"
    # scan_summary | tee -a "${out}.txt" # new process, subshell values lost.
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
        elif [[ "${opt}" == "-r" ]] || [[ "${opt}" == "" ]] ; then
            create_report
            return 0
        elif [[ "${opt}" == "-p" ]] ; then
            CHECK_PGME=true
            continue
        else
            # summary
            [[ $once ]] && script_summary;
            calc_languages "${opt}"
        fi
        unset once
    done

}

main ${@}
