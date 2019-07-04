# slack-aws-billing-notification
awsの利用料金をデイリーでSlackに通知するスクリプト

# Setup

## venv
```
cd src/handlers/
python3 -m venv myvenv
source ./myvenv/bin/activate
```

## 必要なパッケージの取得
```
# venvをアクティベートした後で
pip install -r requirements.txt
```

## 利用する環境変数
- SLACK_AWS_BILLING_NOTIFICATION_PROFILE
- SLACK_XBLOOD_WEBHOOK_URL
- SLACK_AWS_BILLING_NOTIFICATION_CHANNEL_NAME
- SLACK_AWS_BILLING_NOTIFICATION_ACCOUNT_NAME
