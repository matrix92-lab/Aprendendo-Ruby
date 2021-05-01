#!/usr/bin/env bash
# atualizar_hora.sh
#
# DdRoot

arquivo="$1"

while read line; do
    date -s "$line"
done < "$arquivo"
