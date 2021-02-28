**tomcat-sample-on-docker**

# 概要
Tomcat 10のサンプルアプリとだいたい同じものを作成しました。
サンプルアプリのページは↓
https://tomcat.apache.org/tomcat-10.0-doc/appdev/sample/
アプリはGradleで作成したwarを、Dockerで立ち上げたTomcatにデプロイする想定です。

# 構成

- ServletApp
  - サンプルアプリを参考にしたアプリです。Gradle Projectとなっています。
- docker-compose.yml
  - Tomcat10を立ち上げるためのファイルです。webappsをボリュームに設定しており、ここにwarを配置すると同期されて、Tomcatによって展開されます。
- deploy.sh
  - Gradleビルドとwarのコピーを行うBashスクリプトです。
- dlsample.sh
  - Tomcat公式サンプルのwarをダウンロードするBashスクリプトです。

# 実行方法

```bash
# 1.Tomcat10の起動
docker-compose up -d
# 2. ビルドとデプロイ
chmod 705 deploy.sh
./deploy.sh
# 3. ページを開く
open http://localhost:8080/hello/
```