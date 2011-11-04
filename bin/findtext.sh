#!/bin/bash
find $2 -type f  ! -path "*.svn*"  -exec grep $1 -Hn --color {} \;
