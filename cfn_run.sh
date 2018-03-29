#!/usr/bin/env bash

#bucket is where SAM uploads the code (zipped) and upload
bucket_name=<bucket_name_goes_here>
stack_name=sam-lambda-stack

aws cloudformation package --template-file template.yaml --output-template-file serverless-output.yaml --s3-bucket $bucket_name

aws cloudformation deploy --template-file serverless-output.yaml  --stack-name $stack_name --capabilities CAPABILITY_NAMED_IAM
