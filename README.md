# slack-aws-billing-notification
awsの利用料金をデイリーでSlackに通知するスクリプト

# Setup

## venv
```
python -m venv myvenv
make venv_activate
```

## 必要なパッケージの取得
```
# venvをアクティベートした後で
pip install -r requirements.txt
```

## 利用する環境変数
- SLACK_AWS_BILLING_NOTIFICATION_PROFILE
    - AWS CLIのPROFILE名を指定
- SLACK_XBLOOD_WEBHOOK_URL
    - SlackのWebhook URLを指定
- SLACK_AWS_BILLING_NOTIFICATION_CHANNEL_NAME
    - Slackのチャンネル名を指定
- SLACK_AWS_BILLING_NOTIFICATION_ACCOUNT_NAME
    - Slackに表示するAWSアカウント名を指定(英語推奨)
