#!/bin/sh
# ----------------------------------------------------------------------
# Created By : sdo
# File Name : update_version_header.sh
# Creation Date : 2022-08-05 00:02:59
# Last Modified : 2022-11-08 01:38:56
# Email Address : sdo@dorseb.ddns.net
# Version : 0.0.0.0
# Licene:
# 	Permission is granted to copy, distribute, and/or modify this document under the terms of the Creative Commons Attribution-NonCommercial 3.0 
# 	Unported License, which is available at http: //creativecommons.org/licenses/by- nc/3.0/.
# Purpose :
#
# ----------------------------------------------------------------------

option="${1}"

case ${option} in
	HINC)
		mydates=`grep '^.\ Version\ \:\ ' $2 |cut -d' ' -f4`
		IFS=',.' read -r -a array <<< "$mydates"
			let length="$((${#array[@]} - 1 ))"
			echo "${array[0]}.${array[1]}.${array[2]}.$((${array[$length]} + 1 ))"
			;;
	PRINTNUM)
		mydates=`grep --text 'my \+$VERSION' $2 | sed 's/my[[:blank:]]\{1,\}\$VERSION[[:blank:]]\{0,\}=[[:blank:]]\{0,\}"\(.*\)".*/\1/'`
		echo "$mydates"
		;;
	INCREASENUM)
		mydates=`grep --text 'my \+$VERSION' $2 | sed 's/my[[:blank:]]\{1,\}\$VERSION[[:blank:]]\{0,\}=[[:blank:]]\{0,\}"\(.*\)".*/\1/'`
		IFS=',.' read -r -a array <<< "$mydates"
			let length="$((${#array[@]} - 1 ))"
			echo "${array[0]}.${array[1]}.${array[2]}.$((${array[$length]} + 1 ))\";"
			;;
		*) echo "Option not recognised."
		exit
		;;
esac
