#!/bin/bash

SPECIAL=';packages;pgme;fdi;'
EXCLUDE=';txt;docinfo;htm;'
LANGUAGES=''
APPLANGS=''
APPS=0
LANGS=0
TRANS=0

function script_help () {

    echo "usage: ${0##*/} language"

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

    [[ "${1}" == "" ]] && return 0
    [[ "${LANGUAGES}" = '' ]] && LANGUAGES=";"
    [[ "${APPLANGS}" = '' ]] && APPLANGS=";"
    if [[ "${LANGUAGES//;${1};}" == "${LANGUAGES}" ]] ; then
        LANGUAGES="${LANGUAGES}${1};"
        (( LANGS++ ))
    fi
    if [[ "${APPLANGS//;${1};}" == "${APPLANGS}" ]] ; then
        APPLANGS="${APPLANGS}${1};"
    fi

}

function calc_dir_languages () {

    [[ ! -d "${1}" ]] && return 1
    local i utf l
    for i in "${1}"/* ; do
        [[ ! -e "${i}" ]] && continue
        utf=$(ls -1d "${i}"* 2>/dev/null | grep -i "${i}\.utf-8" )
        [[ "${utf}" != "" ]] && continue
        l=$(lang_of_nls "${i}")
        [[ "${l}" == "" ]] && continue
        calc_add_language ${l}
        (( TRANS++ ))
    done

    return 0
}

function calc_src_languages () {

    [[ ! -d "${1}" ]] && return 1
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
        calc_add_language ${l}
        (( TRANS++ ))
    done
    return 0
}

function calc_languages () {

    APPLANGS=''
    local prog
    calc_dir_languages ${1}/nls && prog=y
    calc_dir_languages ${1}/help && prog=y
    calc_src_languages ${1}/source && prog=y

    if [[ "${prog}" == "y" ]] ; then
        (( APPS++ ))
        APPLANGS="${APPLANGS:1:$(( ${#APPLANGS} - 2))}"
        APPLANGS="${APPLANGS//;/, }"
        echo "${1}: ${APPLANGS}"
    fi

    return 0

}

function each_app () {

    local app
    for app in * ; do
        [[ ! -d "${app}" ]] && continue
        [[ "${SPECIAL//;${app};}" != "${SPECIAL}" ]] && continue
        ${1} ${app}
    done

}


function main () {

    local opt i

    while [[ "${1}" != "" ]] ; do
        opt="${1}"
        shift
        if [[ "${opt}" == "-t" ]] ; then
            each_app calc_languages
            echo
            echo "${APPS} total programs, ${LANGS} total languages, ${TRANS} total translations"
            LANGUAGES=$(for i in ${LANGUAGES//;/ } ; do echo "${i}, "; done | sort | tr -d "[:cntrl:]")
            LANGUAGES="${LANGUAGES:0:$(( ${#LANGUAGES} - 2))}"
            echo "Languages: ${LANGUAGES}"
        else
            :;
        fi
    done

}

if [[ ${#*} -eq 0 ]] ; then
    script_help
else
    main ${@}
fi