#!/bin/bash
tar xvf $1.tar.gz
mysql $2 -u root -p --default-character-set=utf8 < $1.sql
rm $1.sql
