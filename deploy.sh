#!/bin/sh

# Create Package
aws cloudformation package \
  --template-file template.yml \
  --output-template-file template-output.yml \
  --s3-bucket ${SLACK_AWS_BILLING_NOTIFICATION_PROFILE}-sam-packages \
  --profile ${SLACK_AWS_BILLING_NOTIFICATION_PROFILE}

# Deploy
aws cloudformation deploy \
  --template-file template-output.yml \
  --stack-name slack-aws-billing-notification \
  --parameter-overrides \
  SlackWebhookUrl=${SLACK_XBLOOD_WEBHOOK_URL} \
  SlackChannelName=${SLACK_AWS_BILLING_NOTIFICATION_CHANNEL_NAME} \
  AwsAccountName=${SLACK_AWS_BILLING_NOTIFICATION_ACCOUNT_NAME} \
  --capabilities CAPABILITY_IAM \
  --profile ${SLACK_AWS_BILLING_NOTIFICATION_PROFILE}

