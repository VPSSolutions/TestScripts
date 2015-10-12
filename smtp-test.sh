#!/bin/bash
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

#   Requirements
#      Netcat
#   Usage 
#      $ bash smtp-test.sh mail.somedomain.com

if [ -z $2 ]; then
        NUMBER=6
else
        NUMBER=$2
fi

printf "Starting VPS Soldiers telnet test script.\n\n"
for i in `seq 1 $NUMBER` ; do
        printf ">> Attempt $i\n"
        echo 'quit' | nc $1 25 ;
        printf "\n"
done
printf "VPS Soldiers telnet test script completed.\n"
