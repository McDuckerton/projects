TEMPLATE_URL='https://dev-cf-scripts.s3.amazonaws.com/cloud9-arch.yaml'
STACK_NAME='cloud9-stack'

aws cloudformation create-stack \
 --stack-name ${STACK_NAME} --template-url ${TEMPLATE_URL} --output text

aws cloudformation wait stack-create-complete \
 --stack-name ${STACK_NAME}


