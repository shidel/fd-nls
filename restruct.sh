#!/bin/bash

function dolang () {

	local i x f o s d
	for i in ${1}/* ; do
		[[ ! -d "${i}" ]] && continue

		x="${i##*/}"
		if [[ "${x}" == "utf-8" ]] || [[ "${x}" == "UTF-8" ]] ; then
		    x='.UTF-8'
		else
		    x=''
		fi
		f="${i%%/*}"
		l="${i:${#f}}"
		l="${l:1}"
		l="${l%%/*}"

		o=$(ls -1 ${i} | grep -m 1 -i "${f}.${l}")
        s="${i}/${o}"
        d="${i%/*}/${o}${x}"

		echo "move ${s} --> ${d}"

        if [[ ! -e "${s}" ]] ; then
            echo "internal error"
            exit 1
        fi
        if [[ -e "${d}" ]] ; then
            echo "$d already exists"
            exit 1
        fi

        if [[ ${doit} ]] ; then
            git mv "${s}" "${d}"
            if [[ $? -ne 0 ]] ; then
                echo move failed
                exit 1
            fi
            rmdir "${i}" >/dev/null 2>&1 || echo "${1} directory not empty"
        fi

	done

    return 0
}

function doprog () {

	local i
	for i in ${1}/* ; do
		[[ ! -d "${i}" ]] && continue
		dolang "${i}"
	done

}

while [[ "${1}" ]] ; do
	opt="${1}"
	shift
	if [[ "${opt}" == "-x" ]] ; then
		doit=true
	elif [[ -d "${opt}" ]] ; then
		doprog "${opt}"
	fi
done

