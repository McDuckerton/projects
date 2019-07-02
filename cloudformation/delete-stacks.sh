STACKNAME=$(aws cloudformation describe-stacks \
 --query 'Stacks[?contains(StackName,`cloud9`) == `true`].StackName' \
 --output text)

aws cloudformation delete-stack --stack-name $STACKNAME

aws cloudformation wait stack-delete-complete \
 --stack-name $STACKNAME
