#!/bin/bash
red=$'\e[1;31m'
grn=$'\e[1;32m'
end=$'\e[0m'

cname="grep"
name="mygrep"

touch f1 f2
check()
{
    printf "#############################################\ntest with :"
    for i; do
        printf " %s" "$i"
    done
    printf "\n"


    "$cname" "$@" > f1
    exit1="$?"
    ./"$name" "$@" > f2
    exit2="$?"
    ret=`diff -u "f1" "f2"`


    if test "$?" -eq 0 && test "$exit1" -eq "$exit2"; then
        printf "${grn}OK !${end}\n"
    else
        echo "$ret"
        printf "${red}KO !${end}\n"
    fi
}
