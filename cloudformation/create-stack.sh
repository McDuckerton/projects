TEMPLATE_URL='https://dev-cf-scripts.s3.amazonaws.com/basic-architecture.yaml'
STACK_NAME='mystack-dev'

aws cloudformation create-stack \
 --stack-name ${STACK_NAME} --template-url ${TEMPLATE_URL} --output text

aws cloudformation wait stack-create-complete \
 --stack-name ${STACK_NAME}


