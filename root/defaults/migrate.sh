#!/usr/bin/with-contenv bash

migrate(){
    local OLD_LOCATION="${1}"
    local NEW_LOCATION="${2}"

    if [[ -f ${OLD_LOCATION} ]];then
        echo "found ${OLD_LOCATION}"
        if [[ ! -f ${NEW_LOCATION} ]];then
            echo "moving to ${NEW_LOCATION}"
            mv "${OLD_LOCATION}" "${NEW_LOCATION}"
        else
            echo "new file location already exists ${NEW_LOCATION}"
        fi
    fi
}
