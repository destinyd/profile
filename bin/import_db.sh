#!/bin/bash
unzip ~/$2.zip ~/
mysql $1 -u root -p --default-character-set=utf8 < ~/$2.sql
