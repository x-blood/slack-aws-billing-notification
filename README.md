# slack-aws-billing-notification
awsの利用料金をSlackに毎日通知するためのサーバーレスアプリケーション

## 通知のサンプル
![image](https://user-images.githubusercontent.com/8668892/138143541-9efcb442-3af8-4d9b-9005-08d8bcca7c32.png)

## Setup
セットアップ方法を記す

### 1. AWS側の設定
1. マイ請求ダッシュボード -> 請求設定 から `請求アラートを受け取る` を有効化する
2. バージニアリージョン（us-east-1）のCloudWatch メトリクス で請求メトリクスが閲覧できることを確認する

### 2. SMSパラメータストアの登録
serverless.ymlに記載のキーでSMSパラメータストアに登録する

### 3. プログラムのデプロイ
#### 3-1. venv
```
python -m venv myvenv
make venv_activate
```

### 3-2. 必要なパッケージの取得
```
# venvをアクティベートした後で
make pip_install
```

### 3-3. Serverless Framework
```
# node v10.18.0以上
npm install -g serverless
npm install --save serverless-python-requirements
npm install --save serverless-pseudo-parameters
```

## Deploy
以下のコマンドを実行することでデプロイ可能
```
make deploy PROFILE=${AWS_PROFILE}
```
