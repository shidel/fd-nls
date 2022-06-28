#!/bin/bash

url_main=http://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/repositories/latest/listing.csv
url_aux=http://fd.lod.bz/repos/current/listing.csv

INDENTING=''
DEBUG=

function setIndent () {
    local denting='    '
    if [[ "${1}" == '+' ]] ; then
        INDENTING="${INDENTING}${denting}"
    else
        INDENTING="${INDENTING:${#denting}}"
    fi
}

function dented () {

    echo "${INDENTING}${@}"

}

function errorlog () {

    local flag=true
    while [[ ${flag} ]] ; do
        read -r line || flag=
        [[ ! ${flag} ]] && [[ "${line}" == '' ]] && continue
        dented "${line}" >&2
        echo "$(date +'%Y-%m-%d %H:%m:%S') (${CSV_FILE}) ${line}">>error.log
    done

}

UPPER_CHARS='ABCDEFGHIJKLMNOPQRSTUFWXYZ'
LOWER_CHARS='abcdefghijklmnopqrstufwxyz'

function upperCase () {
# unfortunately cannot use the simple ${var^^} on OS-X to convert to upper case

    local out c i
    for (( i=0;i<${#1};i++ )) ; do
        c="${1:${i}:1}"
        if [[ "${c//[a-z]}" != "${c}" ]] ; then
            c="${LOWER_CHARS%${c}*}"
            c="${UPPER_CHARS:${#c}:1}"
        fi
        out="${out}${c}"
    done
    echo "${out}"

}

function lowerCase () {
# unfortunately cannot use the simple ${var,,} on OS-X to convert to lower case

    local out c i
    for (( i=0;i<${#1};i++ )) ; do
        c="${1:${i}:1}"
        if [[ "${c//[A-Z]}" != "${c}" ]] ; then
            c="${UPPER_CHARS%${c}*}"
            c="${LOWER_CHARS:${#c}:1}"
        fi
        out="${out}${c}"
    done
    echo "${out}"

}

function download () {

    local server="${1#*//}'"
    server="${server%%/*}"
    setIndent +
    dented "download listing.csv from ${1%%//*}//${server} as ${2}"
    setIndent -
    local cmd="$(command -v wget)"
    if [[ -e "${cmd}" ]] ; then
        "${cmd}" -q "${1}" -O "${2}" && return 0 || return $?
    fi
    cmd="$(command -v curl)"
    if [[ -e "${cmd}" ]] ; then
        "${cmd}" -s -o "${2}" "${1}" && return 0 || return $?
    fi
    echo "Unable to locate either wget or curl, cannot download file." | errorlog
    return 1
}

function fetch_csv () {

    echo Retrieving latest translation CSV files.
    download "${url_main}" ibiblio.csv
    if [[ $? -ne 0 ]] ; then
        echo "problem downloading ${url_main}"
        return 1
    fi;
    download "${url_aux}" fd-lod.csv
    if [[ $? -ne 0 ]] ; then
        echo "problem downloading ${url_aux}"
        return 1
    fi;

    return 0
}

MASTER_HEADER=
MASTER_FIELDS=0
MASTER_IGNORE=";md5;group;crc;versions;version;entered-date;modified-date;"\
"changes;primary-site;alternate-site;original-site;wiki-site;mirror-site;"\
"author;maintained-by;"

MASTER_TOTAL=0
# MASTER_ID[*]=

function set_master_header () {

    dented "Defining master CSV from current CSV"
    setIndent +

    MASTER_HEADER="${1}"
    MASTER_FIELDS=0
    unset MASTER_FIELD

    local line="${MASTER_HEADER}"
    local item field
    while [[ "${line}" ]] ; do
        item="${line%%,*}"
        line="${line:$(( ${#item} + 1 ))}"
        [[ "${item}" == "" ]] && continue
        if [[ "${MASTER_IGNORE//;${item};}" != "${MASTER_IGNORE}" ]] ; then
            dented "Ignore master field \`${item}'"
            continue
        fi
        (( MASTER_FIELDS++ ))
        MASTER_FIELD[${MASTER_FIELDS}]="${item}"
    done
    setIndent -
    return 0

}

CSV_HEADER=
CSV_FIELDS=
CSV_TOTAL=0
# CSV_ID[*]=
CSV_MASTER=true

function set_header_fields () {

    local header="$(lowerCase ${1})"

    CSV_HEADER="${header}"
    CSV_FIELDS=0
    unset CSV_FIELD
    unset CSV_MAP

    if [[ ${MASTER_FIELDS} -eq 0 ]] ; then
        set_master_header "${1}"
    fi

    dented "Mapping CSV header to master CSV"
    setIndent +

    local line="${header}"
    local item field index
    while [[ "${line}" ]] ; do
        item="${line%%,*}"
        line="${line:$(( ${#item} + 1 ))}"
        [[ "${item}" == "" ]] && continue
        index=0
        (( CSV_FIELDS++ ))
        CSV_FIELD[${CSV_FIELDS}]="${item}"
        while [[ ${index} -lt ${MASTER_FIELDS} ]] ; do
            ((index++))
            if [[ "${item}" == "${MASTER_FIELD[${index}]}" ]] ; then
                CSV_MAP[${CSV_FIELDS}]=${index}
                break
            fi
        done
        if [[ "${CSV_FIELD[${CSV_FIELDS}]}" = "" ]] ; then
            dented "CSV field \`${item}' will be ignored"
        fi
    done

    setIndent -
    return 0

}

function id_in_master () {

    local i=0
    for (( i=1;i<=${MASTER_TOTAL};i++ )) ; do
        [[ "${MASTER_ID[${i}]}" == "${1}" ]] && return 0
    done
    return 1

}

function id_in_csv () {

    local i=0
    for (( i=1;i<=${CSV_TOTAL};i++ )) ; do
        [[ "${CSV_ID[${i}]}" == "${1}" ]] && return 0
    done
    return 1

}

function get_csv_id () {

    local i=0
    for (( i=1;i<=${CSV_TOTAL};i++ )) ; do
        [[ "${CSV_ID[${i}]}" == "${1}" ]] && echo "${i}" && return 0
    done
    return 1

}

function process_line () {

    local line="${1}"

	# echo "?? ${line}"

    local index=0
    local id sha field
    local data storage finished piece xpiece
    unset data
    local data

    unset RECENT_ID

    while [[ ${#line} -gt 0 ]] && [[ ! ${finished} ]]; do
        (( index++ ))
        if [[ ${#line} -eq 0 ]] ; then
        	break
        fi
        field=

		if [[ "${line:0:1}" == '"' ]] ; then
			line="${line:1}"
			xpiece="${line%%\"*}"
			xpiece=${#xpiece}
			while [[ ${xpiece} -lt ${#line} ]] ; do
				piece="${line:${xpiece}:2}"
				# echo "? ${piece}"
				if [[ "${piece}" == '""' ]] ; then
					(( xpiece++ ))
				elif [[ "${piece:0:1}" == '"' ]] ; then
					break
				fi
				(( xpiece++ ))
			done
			piece="${line:0:${xpiece}}"
			line="${line:$((${xpiece} + 1 ))}"
			field="${field}${piece}"
		fi
		piece="${line%%,*}"
		line="${line:$(( ${#piece} + 1))}"
		field="${field}${piece}"
		field="${field//\"\"/\"}"

        # echo ">> ${field}"

        if [[ "${CSV_FIELD[${index}]}" == 'id' ]] ; then
            id="${field}"
            if [[ "${CSV_MASTER}" == "true" ]] ; then
                id_in_master "${id}" && return 0
            fi
        elif [[ "${CSV_FIELD[${index}]}" == 'sha' ]] ; then
            sha="${field//[![:xdigit]]}"
        fi

        data[${index}]="${field}"

    done

	# return 0

    RECENT_ID="${id}"

    if [[ ! ${index} -eq ${CSV_FIELDS} ]] ; then
        echo "warning: field count ${index}/${CSV_FIELDS} missmatch for \`${id}'" | errorlog
    fi;

    if [[ ! ${#sha} -eq 64 ]] ; then
        echo "error: invalid sha hash for \`${id}', entry excluded" | errorlog
        return 0
    fi

    [[ ${DEBUG} ]] && [[ ${CSV_TOTAL} -gt ${DEBUG} ]] && return 1

    if [[ "${CSV_MASTER}" == "true" ]] ; then
        ((MASTER_TOTAL++))
        MASTER_ID[${MASTER_TOTAL}]="${id}"
    else
        id_in_master "${id}"
        if [[ $? -eq 1 ]] ; then
            echo "warning: no master entry for \`${id}', entry excluded" | errorlog
            return 42
        fi
    fi

    ((CSV_TOTAL++))
    CSV_ID[${CSV_TOTAL}]="${id}"
    index=0
    storage="CSV_${CSV_TOTAL}"
    unset $storage
    while [[ ${index} -lt ${CSV_FIELDS} ]] ; do
        ((index++))
        if [[ "${CSV_MAP[${index}]}" != "" ]] && [[ "${data[${index}]}" != '' ]]; then
                storage="CSV_${CSV_TOTAL}[${CSV_MAP[${index}]}]"
                read -r ${storage}<<<"${data[${index}]}"
                if [[ "${CSV_MASTER}" == "true" ]]; then
                    storage="MASTER_${MASTER_TOTAL}[${CSV_MAP[${index}]}]"
                    read -r ${storage}<<<"${data[${index}]}"
                fi
        fi
    done

}

function import_csv () {

    CSV_FILE="${1}"
    CSV_HEADER=
    CSV_FIELDS=
    CSV_TOTAL=0
    unset CSV_ID
    dented "Import ${1}"
    local flag line header ret
    setIndent +
    flag=first
    while [[ ${flag} ]] ; do
        read -r line || flag=
        line="${line//[$'\t\r\n']}"
        [[ "${line}" == "" ]] && continue
        if [[ "${header}" == "" ]] ; then
            header="${line}"
            set_header_fields "${header}"
        else
            if [[ "${flag}" == "first" ]] ; then
                flag=true
                dented "Processing CSV table"
            fi
            process_line "${line}"
            ret=$?
            if [[ ${ret} -eq 42 ]] && [[ "${RECENT_ID}" != "" ]] ; then
                [[ -d "${CSV_FILE%/*}/excluded" ]] || mkdir -p "${CSV_FILE%/*}/excluded"
                echo "${header}">"${CSV_FILE%/*}/excluded/${RECENT_ID}.csv"
                echo "${line}">>"${CSV_FILE%/*}/excluded/${RECENT_ID}.csv"
            elif [[ ${ret} -ne 0 ]] ; then
                break
            fi
        fi
    done< "${1}"
    dented "${CSV_TOTAL} total entries processed"
    setIndent -
    return 0

}

function print_master () {

    CSV_FILE="master.csv"
    dented "Export master.csv"
    local i x v out
    for (( i=1;i<=${MASTER_FIELDS};i++ )) ; do
        [[ "${out}" != '' ]] && out="${out},"
        out="${out}${MASTER_FIELD[${i}]}"
    done
    echo "${out}">master.csv
    for (( i=1;i<=${MASTER_TOTAL};i++ )) ; do
        out=
        for (( x=1;x<=${MASTER_FIELDS};x++ )) ; do
            v="MASTER_${i}[${x}]"
            v="${!v}"
            # [[ "${v/\"}" != "${v}" ]] && echo "${v}"
            [[ "${v/,}" != "${v}" ]] && v="\"${v}\""
            [[ "${out}" != '' ]] && out="${out},"
            out="${out}${v}"
        done
        echo "${out}"
    done | LC_ALL='C' sort >>master.csv
}

function print_csv () {

    CSV_FILE="${1}"
    dented "Export ${CSV_FILE}"
    local i x v out
    for (( i=1;i<=${MASTER_FIELDS};i++ )) ; do
        [[ "${out}" != '' ]] && out="${out},"
        out="${out}${MASTER_FIELD[${i}]}"
    done
    echo "${out}">"${CSV_FILE}"
    for (( i=1;i<=${CSV_TOTAL};i++ )) ; do
        out=
        for (( x=1;x<=${MASTER_FIELDS};x++ )) ; do
            v="CSV_${i}[${x}]"
            v="${!v}"
            # [[ "${v/\"}" != "${v}" ]] && echo "${v}"
            [[ "${v/,}" != "${v}" ]] && v="\"${v}\""
            [[ "${out}" != '' ]] && out="${out},"
            out="${out}${v}"
        done
        echo "${out}"
    done | LC_ALL='C' sort >>"${CSV_FILE}"
}

function print_diff () {

    CSV_FILE="${1}"
    dented "Export ${1}, ${CSV_TOTAL} known entries"
    setIndent +
    local i x v out mixed csv

    [[ "${1/mixed}" != "${1}" ]] && mixed=true
    for (( i=1;i<=${MASTER_FIELDS};i++ )) ; do
        [[ "${out}" != '' ]] && out="${out},"
        out="${out}${MASTER_FIELD[${i}]}"
        [[ $i -eq 1 ]] && [[ ${mixed} ]] && out="${out},new"
    done
    echo "${out}">"${1}"
    for (( i=1;i<=${MASTER_TOTAL};i++ )) ; do
        out=
        csv=$( get_csv_id "${MASTER_ID[${i}]}" )
        if [[ "${csv}" == "" ]] ; then
            if [[ ${mixed} ]] ; then
                echo "missing ${MASTER_ID[${i}]}, adding from master.csv" | errorlog
            fi
            for (( x=1;x<=${MASTER_FIELDS};x++ )) ; do
                v="MASTER_${i}[${x}]"
                v="${!v}"
                # [[ "${v/\"}" != "${v}" ]] && echo "${v}"
                [[ "${v/,}" != "${v}" ]] && v="\"${v}\""
                [[ "${out}" != '' ]] && out="${out},"
                out="${out}${v}"
                [[ $x -eq 1 ]] && [[ ${mixed} ]] && out="${out},*"
            done
            echo "${out}"
        else
            [[ ! ${mixed} ]] && continue
            for (( x=1;x<=${MASTER_FIELDS};x++ )) ; do
                v="CSV_${csv}[${x}]"
                v="${!v}"
                # [[ "${v/\"}" != "${v}" ]] && echo "${v}"
                [[ "${v/,}" != "${v}" ]] && v="\"${v}\""
                [[ "${out}" != '' ]] && out="${out},"
                out="${out}${v}"
                [[ $x -eq 1 ]] && [[ ${mixed} ]] && out="${out},"
            done
            echo "${out}"

        fi
    done | LC_ALL='C' sort >>"${1}"
    setIndent -
}

function create_master_csv () {

    dented "Building master.csv"
    setIndent +
    while [[ "${1}" ]] ; do
        import_csv "${1}" || return $?
        shift
    done
    print_master
    dented "${MASTER_TOTAL} total master entries"
    setIndent -

}

function main () {

    [[ "${1}" = "master" ]] && 	echo "Update MasterCSV only"
    [[ -e "error.log" ]] && rm "error.log"
    local f o
    fetch_csv || return $?
    create_master_csv ibiblio.csv fd-lod.csv || return $?
    [[ "${1}" = "master" ]] && 	return 0
    CSV_MASTER=

    for f in */listing.csv ; do
        [[ ! -e "${f}" ]] && continue
        import_csv "${f}"
        o="${f%/*}"
        # o="${o//\//-}"
        setIndent +
        print_diff "${o}/missing.csv"
        print_diff "${o}/mixed.csv"
        # print_csv "export.csv"
        setIndent -
    done

}

function maintest () {

  local line
  header=$(head -n 1 de/listing.csv)
  set_header_fields "${header}"

  line="$(grep -i 'vmsmount' de/listing.csv)"
  line="${line//[$'\t\r\n']}"
  process_line "${line}"

}

main ${@}
# maintest
exit $?
