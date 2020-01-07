#!/bin/bash
OUTPUT=$(tc-cli run -u user@hiitconsulting.com -t 142A859F289C4686BD777E708559D36B -p "Interface de paiement" -v "Base" -s "Interface de paiement" -l "Chrome 1920x1080" -e "https://preprod.iadholding.com(Default)")

echo "$OUTPUT" > tc-cli-result.txt
if grep -Gq "Test Result: Failure" tc-cli-result.txt
then
echo "Test Result: Failure"
exit 1
else
echo "Test Result: Success"
exit 0
fi
