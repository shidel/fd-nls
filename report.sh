#!/bin/bash

EXCEPT=';packages;fdi;htmlhelp;'
SPECIAL=';pgme;danger;'
EXCLUDE=';txt;docinfo;htm;html;inc;'

LANGUAGES=''
APPLANGS=''
APPS=0
LANGS=0
TRANS=0
PLATFORM="$(uname)"
KEYFILE_ERR="translation file"
URL="https://github.com/shidel/fd-nls/tree/master"

# Danger Engine extra EN fonts, not needing language specific versions
EXTRAFNTS=';1214;0820;0818;0814;0812;0810;0808;'
REQFNTS=';1012;0816;'

unset CHECK_PGME

DEBUGGING=";tee;"
unset DEBUGGING

function script_header () {
    echo "When listing languages for a specific program, the language maybe followed"
    echo "by a special character. Those characters mean the translation file failed"
    echo "a specific test."
    echo
    echo "  ? unable to locate default English version"
    echo "  ! caution, English version is newer than translation"
    echo "  + caution, has some extras keys and probably nothing to worry about"
    echo "  * problem, has some missing keys"
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

	[[ -d "${1}" ]] && return 0
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

function check_group_app () {
    local lfile afile app tfile appf appl curf
    # figure out what apps
    for lfile in "${1}"/* ; do
        [[ ! -d "${lfile}" ]] && continue
        lfile="${lfile##*/}"
        tfile=$(upperCase "${lfile}")
        [[ "${EXCLUDE//;${tfile};}" != "${EXCLUDE}" ]] && continue
        app=$(lowerCase "${lfile}")
        # get app english file versions
        appf=
        appl=
        for afile in "${1}/${app}/"* ; do
            afile="${afile##*/}"
            tfile=$(upperCase "${lfile}")
            [[ "${EXCLUDE//;${tfile};}" != "${EXCLUDE}" ]] && continue
            [[ "${tfile//.UTF-8}" != "${tfile}" ]] && continue
            # add lang to list
            tfile=$(lowerCase "${tfile}")
            [[ "${appl//;${tfile##*.}}" == "${appl}" ]] && appl="${appl};${tfile##*.};"
            # not english skip for now
            [[ "${afile##*.}" != "en" ]] && continue
            appf="${appf};${afile%.*};"
        done
        while [[ ${#appf} -ne 0 ]] ; do
            curf="${appf%%;*}"
            appf="${appf:$(( ${#curf} + 1))}"
            [[ ${#curf} -eq 0 ]] && continue
            compare_nls $(fileCase "${1}/${app}/${curf}.es")
            echo ${1}, ${app}.${curf}: ${appl}
        done

    done
    return 0

}

function special_danger () {
    local lfile reqf='' appl=';en;' cur msg havl curx
    # see what english fonts are there
    for lfile in "${2}/fonts/"* ; do
        lfile=$(lowerCase "${lfile}")
        lfile="${lfile##*/}"
        [[ "${lfile//.fnt}.fnt" != "${lfile}" ]] && continue
        lfile="${lfile//.fnt}"
        # add lang to list
        [[ "${appl//;${lfile:6:2};}" == "${appl}" ]] && appl="${appl};${lfile:6:2};"
        # not english skip for now
        [[ "${lfile:6:2}" != "en" ]] && continue
        # check if non-required font
        [[ "${EXTRAFNTS//;${lfile:0:4};}" != "${EXTRAFNTS}" ]] && continue
        # its a required english font
        reqf="${reqf};${lfile:0:6};"
    done
    while [[ ${#appl} -gt 0 ]] ; do
        cur="${appl%%;*}"
        appl="${appl:$(( ${#cur} + 1))}"
        [[ ${#cur} -eq 0 ]] && continue
        havl="${reqf}"
        for lfile in "${2}/fonts/"* ; do
            lfile=$(lowerCase "${lfile}")
            lfile="${lfile##*/}"
            [[ "${lfile//.fnt}.fnt" != "${lfile}" ]] && continue
            lfile="${lfile//.fnt}"
            [[ "${lfile:6:2}" != "${cur}" ]] && continue
            havl="${havl//;${lfile:0:6};}"
        done
        [[ ${#msg} -ne 0 ]] && msg="${msg}, "
        [[ "${havl}" == '' ]] && msg="${msg}${cur}" || msg="${msg}${cur}*"
    done
    echo "${2}: ${msg} (font files)"
}

function special_imgedit () {
    :;
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


function html_intro () {
echo '<body>
<h1 id="fd-nls-freedos-translation-project">fd-nls <a href="https://shidel.github.io/fd-nls">FreeDOS Translation Project</a></h1>

<p>This project contains language contributions and other submissions
for software related to <a href="https://www.freedos.org">FreeDOS&trade;</a>.</p>

<h2 id="contribution-licensing">Contribution Licensing</h2>

<p>All user accepted contributions to this project are required for their
submissions to accept and be bound by the overall license of this project and
the license for any software projects to which their submission is related.
Any accepted submission will automatically be covered by the
<a href="https://opensource.org/licenses/GPL-2.0">GNU General
Public License, version 2</a> or later.
Also when required, the submissions will automatically be licensed under any
additional open source licenses to maintain consistency and compatibility
to the project for which it is submitted. This includes, but is not limited
to, any licensing additions or changes that may be required to release, modify
and distribute any provided submissions. This includes any subsequent changes
to this project or any of the related projects licenses.</p>

'
}

function sortlangs() {
    local lng
    local langs="${1}"
    while [[ ${#langs} -gt 1 ]] ; do
        lng="${langs%%;*}"
        langs="${langs:$(( ${#lng} + 1 ))}"
        [[ ${#lng} -eq 0 ]] && continue
        [[ "${lng}" == 'en' ]] && continue
        echo "${lng};"
    done | sort -u
}
function html_header () {
echo '<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="theme-color" content="#151515">
        <meta name="msapplication-navbutton-color" content="#151515">
        <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">

        <title>FD-NLS Translation Status</title>
    </head>
'
}
function css_style () {
echo '<style>
.highlight {
    color:#d0d0d0
}

.highlight table td {
    padding:5px
}

.highlight table pre {
    margin:0
}

.highlight .w {
    color:#d0d0d0
}

.highlight .err {
    color: #151515;
    background-color:#ac4142
}

.highlight .c, .highlight .cd, .highlight .cm, .highlight .c1, .highlight .cs {
    color:#888
}

.highlight .cp {
    color:#f4bf75
}

.highlight .o, .highlight .ow {
    color:#f4bf75
}

.highlight .p, .highlight .pi {
    color:#d0d0d0
}

.highlight .gi {
    color:#90a959
}

.highlight .gd {
    color:#ac4142
}

.highlight .gh {
    color: #6a9fb5;
    font-weight:bold
}

.highlight .k, .highlight .kn, .highlight .kp, .highlight .kr, .highlight .kv {
    color:#aa759f
}

.highlight .kc, .highlight .kt, .highlight .kd {
    color:#d28445
}

.highlight .s, .highlight .sb, .highlight .sc, .highlight .sd, .highlight .s2, .highlight .sh, .highlight .sx, .highlight .s1 {
    color:#90a959
}

.highlight .sr {
    color:#75b5aa
}

.highlight .si, .highlight .se {
    color:#8f5536
}

.highlight .nt, .highlight .nn, .highlight .nc, .highlight .no {
    color:#f4bf75
}

.highlight .na {
    color:#6a9fb5
}

.highlight .m, .highlight .mf, .highlight .mh, .highlight .mi, .highlight .il, .highlight .mo, .highlight .mb, .highlight .mx {
    color:#90a959
}

.highlight .ss {
    color:#90a959
}

body {
    margin: 0;
    padding: 0;
    background: #151515 url("../images/bkg.png") 0 0;
    color: #eaeaea;
    font-size: 16px;
    line-height: 1.5;
    font-family: Monaco, "Bitstream Vera Sans Mono", "Lucida Console", Terminal, monospace
}

.container {
    width: 90%;
    max-width: 1000px;
    margin:0 auto
}

section {
    display: block;
    margin:0 0 20px 0
}

h1, h2, h3, h4, h5, h6 {
    margin:0 0 20px
}

li {
    line-height:1.4
}

header {
    background: rgba(0, 0, 0, 0.1);
    width: 100%;
    border-bottom: 1px dashed #b5e853;
    padding: 20px 0;
    margin:0 0 40px 0
}

header h1 {
    font-size: 30px;
    line-height: 1.5;
    margin: 0 0 0 -40px;
    font-weight: bold;
    font-family: Monaco, "Bitstream Vera Sans Mono", "Lucida Console", Terminal, monospace;
    color: #b5e853;
    text-shadow: 0 1px 1px rgba(0, 0, 0, 0.1), 0 0 5px rgba(181, 232, 83, 0.1), 0 0 10px rgba(181, 232, 83, 0.1);
    letter-spacing: -1px;
    -webkit-font-smoothing:antialiased
}

@media (max-width: 1000px) {
    header h1 {
        margin-left:0
    }
}

header h1:before {
    content: "./ ";
    font-size:24px
}

header h2 {
    font-size: 18px;
    font-weight: 300;
    color:#666
}

#downloads .btn {
    display: inline-block;
    text-align: center;
    margin:0
}

#main_content {
    width: 100%;
    -webkit-font-smoothing:antialiased
}

section img {
    max-width:100%
}

h1, h2, h3, h4, h5, h6 {
    font-weight: normal;
    font-family: Monaco, "Bitstream Vera Sans Mono", "Lucida Console", Terminal, monospace;
    color: #b5e853;
    letter-spacing: -0.03em;
    text-shadow:0 1px 1px rgba(0, 0, 0, 0.1), 0 0 5px rgba(181, 232, 83, 0.1), 0 0 10px rgba(181, 232, 83, 0.1)
}

#main_content h1 {
    font-size:30px
}

#main_content h2 {
    font-size:24px
}

#main_content h3 {
    font-size:18px
}

#main_content h4 {
    font-size:14px
}

#main_content h5 {
    font-size: 12px;
    text-transform: uppercase;
    margin:0 0 5px 0
}

#main_content h6 {
    font-size: 12px;
    text-transform: uppercase;
    color: #999;
    margin:0 0 5px 0
}

dt {
    font-style: italic;
    font-weight:bold
}

ul li {
    list-style-image: url("../images/bullet.png")
}

blockquote {
    color: #aaa;
    padding-left: 10px;
    border-left:1px dotted #666
}

pre {
    background: rgba(0, 0, 0, 0.9);
    border: 1px solid rgba(255, 255, 255, 0.15);
    padding: 10px;
    font-size: 16px;
    color: #b5e853;
    border-radius: 2px;
    word-wrap: normal;
    overflow: auto;
    overflow-y:hidden
}

code.highlighter-rouge {
    background: rgba(0, 0, 0, 0.9);
    border: 1px solid rgba(255, 255, 255, 0.15);
    padding: 0px 3px;
    margin: 0px -3px;
    color: #aa759f;
    border-radius:2px
}

table {
    width: 100%;
    margin:0 0 20px 0
}

th {
    text-align: left;
    border-bottom: 1px dashed #b5e853;
    padding:5px 10px
}

td {
    padding:5px 10px
}

hr {
    height: 0;
    border: 0;
    border-bottom: 1px dashed #b5e853;
    color:#b5e853
}

.btn {
    display: inline-block;
    background: -webkit-linear-gradient(top, rgba(40, 40, 40, 0.3), rgba(35, 35, 35, 0.3) 50%, rgba(10, 10, 10, 0.3) 50%, rgba(0, 0, 0, 0.3));
    padding: 8px 18px;
    border-radius: 50px;
    border: 2px solid rgba(0, 0, 0, 0.7);
    border-bottom: 2px solid rgba(0, 0, 0, 0.7);
    border-top: 2px solid #000;
    color: rgba(255, 255, 255, 0.8);
    font-family: Helvetica, Arial, sans-serif;
    font-weight: bold;
    font-size: 13px;
    text-decoration: none;
    text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.75);
    box-shadow:inset 0 1px 0 rgba(255, 255, 255, 0.05)
}

.btn:hover {
    background:-webkit-linear-gradient(top, rgba(40, 40, 40, 0.6), rgba(35, 35, 35, 0.6) 50%, rgba(10, 10, 10, 0.8) 50%, rgba(0, 0, 0, 0.8))
}

.btn .icon {
    display: inline-block;
    width: 16px;
    height: 16px;
    margin: 1px 8px 0 0;
    float:left
}

.btn-github .icon {
    opacity: 0.6;
    background: url("../images/blacktocat.png") 0 0 no-repeat
}

a {
    color: #63c0f5;
    text-shadow:0 0 5px rgba(104, 182, 255, 0.5)
}

.cf:before, .cf:after {
    content: "";
    display:table
}

.cf:after {
    clear:both
}

.cf {
    zoom:1
}

#a-title {
    text-decoration: none
}

</style>'
}

function create_readme_html () {
    local bkg_off="" # " style=\"background:#333;\""
    local bkg_on=" style=\"background:#444;\""

    local out=report.html
    local rdate=$(grep -i "^Report Date: " report.txt | cut -d ':' -f 2-)
    local langs lng lcnt=0 tcnt=0 tlng
    local apps app acnt=0 tapp x alng tline line s v alt bkg
    rdate=$(trim "${rdate}")

    while IFS=''; read -r line ; do
        [[ "${line}" == '' ]] && continue
        app="${line%%:*}"
        if [[ "${app/ /}" != "${app}" ]] ; then
            [[ "${app/pgme/}" == "${app}" ]] && continue
            [[ "${app/(/}" != "${app}" ]] && continue
        fi
        (( acnt++ ))
        apps="${apps};${app};"
        line="${line#*:}"
        while [[ ${#line} -gt 0 ]] ; do
            lng="${line%% *}"
            line="${line:$(( ${#lng} + 1))}"
            [[ "${lng/(}" != "${lng}" ]] && break
            (( tcnt++ ))
            lng="${lng//[![:alpha:]]}"
            [[ "${lng}" == "" ]] && continue
            if [[ "${langs/;${lng};}" == "${langs}" ]] ; then
                langs="${langs};${lng};"
                (( lcnt++ ))
            fi
        done;
    done<report.txt

    html_header>${out}

    css_style >>${out}

    html_intro >>${out}
    echo '<h2>Individual program translation status</h2>'>>${out}

    langs=$(sortlangs "${langs}")
    langs=";en;${langs//[[:cntrl:]]};!!;"
    langs="${langs//;;/;}"
    # echo "${langs}">>${out}

    echo '<table>'>>${out}
    tapp="${apps}"
    alt=
    while [[ ${#tapp} -gt 0 ]] ; do
        app="${tapp%%;*}"
        tapp="${tapp:$(( ${#app} + 1 ))}"
        [[ ${#app} -eq 0  ]] && continue
        if [[ "${alt}" == "" ]] ; then
            alt=" style=\"background:#eee;\""
            bkg="${bkg_on}"
        else
            alt=
            bkg="${bkg_off}"
        fi

        tlng="${langs}"
        x="<tr${bkg}><td style=\"padding-left:1pc;padding-right:0.2pc;\"><a href=\"${URL}/${app%%,*}\" TARGET=\"_BLANK\">${app}</a></td>"
        line=$(grep "^${app}:" report.txt)
        line="${line#*: }"
        [[ "${app%%,*}" == "pgme" ]] && line="en, ${line}"
        while [[ ${#tlng} -gt 0 ]] ; do
            lng="${tlng%%;*}"
            tlng="${tlng:$(( ${#lng} + 1 ))}"
            [[ ${#lng} -eq 0 ]] && continue
            tline="${line}"
            s=''
            v=
            while [[ ${#tline} -gt 0 ]] ; do
                alng="${tline%% *}"
                if [[ "${alng/(}" != "${alng}" ]] && [[ "${lng}" == '!!' ]] ; then
                    s="<i>${tline}</i>"
                    v=" style=\"padding-left:0.2pc;padding-right:1pc;\""
                    break
                fi
                tline="${tline:$(( ${#alng} + 1))}"
                if [[ "${alng//[![:alpha:]]}" == "${lng}" ]] ; then
                    s="${alng//[![:alpha:]]}"
                    v="${alng//[[:alpha:]]}"
                    v="${v//,}"
                    if [[ "${v}" == '' ]] ; then
                        v="color:white;background:green"
                    elif [[ "${v}" == '@' ]] ; then
                        v="color:white;background:green"
                    elif [[ "${v}" == '*' ]] ; then
                        v="color:white;background:red"
                    elif [[ "${v}" == '+' ]] ; then
                        v="color:white;background:blue"
                    elif [[ "${v}" == '!' ]] ; then
                        v="color:black;background:yellow"
                    elif [[ "${v}" == '?' ]] ; then
                        v="color:black;background:orange"
                    fi
                    if [[ "${v}" != '' ]] ; then
                        v=" style=\"${v};padding-left:0.2pc;padding-right:0.2pc;\""
                    fi
                    break
                fi
            done
            x="${x}<td${v}>${s}</td>"
        done
        x="${x}</tr>"
        echo "${x}">>${out}
    done

    echo '</table>'>>${out}
    echo "<br>">>${out}
    echo "<table>">>${out}
    echo "<tr><td style=\"color:white;background:green;padding-left:2pc;padding-right:2pc;\">Good, no problems detected</td></tr>">>${out}
    echo "<tr><td style=\"color:white;background:blue;padding-left:2pc;padding-right:2pc;\">Probably good, contains extra keys</td></tr>">>${out}
    echo "<tr><td style=\"color:black;background:yellow;padding-left:2pc;padding-right:2pc;\">Might be good, older than English but no known problems</td></tr>">>${out}
    echo "<tr><td style=\"color:black;background:orange;padding-left:2pc;padding-right:2pc;\">Might be good, cannot compare or no English version found</td></tr>">>${out}
    echo "<tr><td style=\"color:white;background:red;padding-left:2pc;padding-right:2pc;\">Problem found, missing keys detected</td></tr>">>${out}
    echo "</table>">>${out}

    echo >>${out}
    echo '<hr>'>>${out}
    echo >>${out}
    echo "<b>${acnt}</b> total programs, <b>${lcnt}</b> total languages, <b>${tcnt}</b> total translations">>${out}
    echo "<br>">>${out}
    echo "Report date: <i>${rdate}</i>">>${out}
    echo "<br>">>${out}
    echo "<br>">>${out}
    echo "</body></html>">>${out}

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
            # create_readme_md
            create_readme_html
            return 0
        elif [[ "${opt}" == "-x" ]] ; then
            # create_readme_md
            create_readme_html
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
