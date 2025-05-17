#!/bin/bash

masters[0]=ibiblio,https://www.ibiblio.org/pub/micro/pc-stuff/freedos/files/repositories/latest/listing.csv
masters[1]=fdlodbz,https://fd.lod.bz/repos/latest/listing.csv

function download () {
    local server="${1#*//}'"
    server="${server%%/*}"
    echo "download listing.csv from ${1%%//*}//${server} as ${2}"
    local cmd="$(command -v wget)"
    if [[ -e "${cmd}" ]] ; then
        "${cmd}" -q "${1}" -O "${2}" && return 0 || return $?
    fi
    cmd="$(command -v curl)"
    if [[ -e "${cmd}" ]] ; then
        "${cmd}" -s -o "${2}" "${1}" && return 0 || return $?
    fi
    echo "Unable to locate either wget or curl, cannot download file."
    return 1
}

function fetch_CSVs () {
  echo Retrieving latest translation CSV files.
  local i=0
  local f u
  while [[ "${masters[${i}]}" != "" ]] ; do
  	f="${masters[${i}]}"
  	u="${masters[${i}]}"
  	f="${f%%,*}.csv"
  	u="${u#*,}"
  	download "${u}" "${f}"
  	if [[ $? -ne 0 ]] ; then
  	  echo "problem downloading ${url_main}"
  	  return 1
  	fi
  	(( i++ ))
  done
}

function check_util () {
  local cpu=$(uname -m)
  local os=$(uname -s)
  [[ "${os}" == "Darwin" ]] && os="darwin"
  [[ "${os}" == "Linux" ]] && os="linux"

  util="bin/csvutil_${cpu}_${os}"

  if [[ ! -x "${util}" ]] ; then
    echo "CSVutil binary for ${os} ${cpu} is not present"
    return 1
  fi

}

check_util || exit 1
fetch_CSVs || exit 1
${util} || exit 1

echo update finished


