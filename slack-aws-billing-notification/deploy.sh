#!/bin/sh

# Create Package
aws cloudformation package \
  --template-file template.yml \
  --output-template-file template-output.yml \
  --s3-bucket sam-sandbox-package \
  --profile xblood

# Deploy
aws cloudformation deploy \
  --template-file template-output.yml \
  --stack-name slack-aws-billing-notification \
  --parameter-overrides \
  SlackWebhookUrl=${SLACK_XBLOOD_WEBHOOK_URL} \
  --capabilities CAPABILITY_IAM \
  --profile xblood

