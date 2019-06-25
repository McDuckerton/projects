STACKNAME=$(aws cloudformation describe-stacks \
 --query 'Stacks[?contains(StackName,`mystack`) == `true`].StackName' \
 --output text)

aws cloudformation delete-stack --stack-name $STACKNAME
