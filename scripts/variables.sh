#!/usr/bin/env bash

# **********************
# Setting date variables
# **********************

TEST_FILE="rpz.mypdns.cloud.list"

printf "\nSetting Variables\n"

if [ -d "${TRAVIS_BUILD_DIR}" ]
then
  ROOT_DIR="${TRAVIS_BUILD_DIR}"

elif [ -d "${CI_BUILDS_DIR}" ]
then
  ROOT_DIR="${CI_BUILDS_DIR}"

else
  printf "\nNo CI Dir found\n"
  exit 1
fi

SCRIPT_DIR="${ROOT_DIR}/scripts"
  

TEST_DIR="${ROOT_DIR}/test_data"

SOURCE_FILE="${TEST_DIR}/${TEST_FILE}"

printf "\nROOT_DIR\n"

ls -lha "${ROOT_DIR}"

printf "\nSCRIPT_DIR\n"

ls -lha "${SCRIPT_DIR}"

printf "\nSOURCE_FILE\n"

ls -lha "${SOURCE_FILE}"

## Whitelist.... there are none
#whitelist="whitelist.txt"
#echo "whitelist='${whitelist}'"
#echo "whitelist=$('${testdir}/${whitelist}')"

tag="$(date '+%F %T %Z %z')"

#MySqlImport () {
#	printf "\nMySql import...\n"
#	sudo mysql -u root -h localhost -e "CREATE DATABASE pyfunceble DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;"
#	sudo mysql -u root -h localhost -e "CREATE USER 'root'@'%' IDENTIFIED BY ''"
#	sudo mysql -u root -h localhost -e "CREATE USER 'pyfunceble'@'localhost' IDENTIFIED BY 'pyfunceble';"
#	sudo mysql -u root -h localhost -e "GRANT ALL PRIVILEGES ON pyfunceble.* TO 'pyfunceble'@'localhost';"
#	if [ -f "${HOME}/db/pyfunceble.sql" ]
#	then
#		mysql --user=pyfunceble --password=pyfunceble pyfunceble < "${HOME}/db/pyfunceble.sql"
#	fi
#	
#	printf "\nMySql Import DONE!\n"
#
#	exit ${?}
#}

#MySqlExport () {
#	printf "\nMysql Export...\n"
#	if [ ! -d "${HOME}/db/" ]
#	then
#		sudo mkdir -p "${HOME}/db/"
#	fi
#	mysqldump --user=pyfunceble --password=pyfunceble --opt pyfunceble > "${HOME}/db/pyfunceble.sql"
#	printf "\nMySql Export done...\n"
#}
