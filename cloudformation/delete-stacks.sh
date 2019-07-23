#!/bin/bash

clear -x

STACKNAME=$(aws cloudformation describe-stacks \
 --query 'Stacks[?contains(StackName,`db-app`) == `true`].StackName' \
 --output text)

echo "[*] Deleting ${STACKNAME}"
aws cloudformation delete-stack --stack-name $STACKNAME

aws cloudformation wait stack-delete-complete \
 --stack-name $STACKNAME

echo "[+] Delete Stack Complete"

sleep 10

clear -x
