#!/bin/bash
# set -euo pipefail
# IFS=$'\n\t'

function AudC
{

    PS3="Convert file to: "
    select CVRT in M4A WAV;

    do
    case $CVRT in
    M4A)
    ls
    read -p "Which file would you like to convert: " -e AudF
    AudF=$(echo $AudF | tr -d "[:space:]")
    afconvert -d aac -f 'm4af' $Aud
    ;;
    WAV)
    ls
    read -p "Which file would you like to convert: " -e AudF
    AudF=$(echo $AudF | tr -d "[:space:]")
    afconvert -d UI8 -f 'WAVE' $AudF
    ;;
    *)
  esac
  break
  done
}


trap AudC EXIT
