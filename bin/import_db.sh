#!/bin/bash
unzip $1.zip -d /tmp/
mysql $2 -u root -p --default-character-set=utf8 < /tmp/$1.sql
