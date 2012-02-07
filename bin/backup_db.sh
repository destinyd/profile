#!/bin/bash
mysqldump $1 -u root -p --default-character-set=utf8 > ~/$1.$(date "+%Y%m%d").sql
