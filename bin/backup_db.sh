#!/bin/bash
mysqldump $1 -u root -p --default-character-set=utf8 --add-drop-table > ~/$1.$(date "+%Y%m%d").sql
