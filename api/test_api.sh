#!/bin/bash
pip install coverage
#pip install codecov

coverage run manage.py test

RESULT=$?
if [ ${RESULT} != "0" ]; then
	echo -e "\nOh no, some test failed!"
	exit ${RESULT}
fi

echo -e "\nGreat, all tests succeed!\n"

coverage report -m

#codecov -t cfb96bda-6e0b-4788-9bf6-ee85a8feb4aa

exit 0