#!/bin/bash
mysql $1 -u root -p --default-character-set=utf8 < $2
