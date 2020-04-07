# slack-aws-billing-notification
awsの利用料金をデイリーでSlackに通知するスクリプト

## Setup

### 1. venv
```
python -m venv myvenv
make venv_activate
```

### 2. 必要なパッケージの取得
```
# venvをアクティベートした後で
make pip_install
```

## 3. Serverless Framework
```
# node v10.18.0以上
npm install -g serverless
npm install --save serverless-python-requirements
npm install --save serverless-pseudo-parameters
```
