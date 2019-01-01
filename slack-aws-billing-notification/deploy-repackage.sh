#!/bin/sh

cd ./src/handlers/myvenv/lib/python3.7/site-packages/
zip -r9 ../../../../../../package.zip .

cd ../../../../../../src/handlers
zip -g ../../package.zip ./slackAwsBillingNotification.py

cd ../../
aws lambda update-function-code \
--function-name slack-aws-billing-notification \
--zip-file fileb://package.zip \
--profile ${SLACK_AWS_BILLING_NOTIFICATION_PROFILE}
