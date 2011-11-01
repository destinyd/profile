#!/bin/bash
#插入snipMate
echo "snippet $2
	$3" >> ~/.vim/bundle/snipMate/snippets/$1.snippets
