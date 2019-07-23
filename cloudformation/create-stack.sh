#!/bin/bash

clear -x

S3_URL='https://dev-cf-scripts.s3.amazonaws.com'
TEMPLATE_URL="${S3_URL}/db-app-infra.yaml"
STACK_NAME='db-app-infra-stack'

COMPARE_STACK=$(aws cloudformation describe-stacks --query 'Stacks[?contains(StackName, `db-app-infra`) == `true`].StackName' --output text)

echo -e "[*] Checking if ${STACK_NAME} exists and deleting"

if [[ ${STACK_NAME} == ${COMPARE_STACK} ]]
then
  aws cloudformation delete-stack --stack-name ${STACK_NAME}
  aws cloudformation wait stack-delete-complete --stack-name ${STACK_NAME}
fi

sleep 15

echo -e "[*] Creating ${STACK_NAME}"

aws cloudformation create-stack \
--stack-name ${STACK_NAME} \
--template-url ${TEMPLATE_URL}

aws cloudformation wait stack-create-complete \
 --stack-name ${STACK_NAME}

echo -e "[+] ${STACK_NAME} Complete"

sleep 10

clear -x
