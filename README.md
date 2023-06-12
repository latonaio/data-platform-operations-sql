# data-platform-operations-sql

data-platform-operations-sql は、データ連携基盤において、作業手順データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-operations-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.xxx.com/api/API_XXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-operations-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* data-platform-operations-sql-header-data.sql（データ連携基盤 作業手順 - ヘッダデータ）
* data-platform-operations-sql-item-data.sql（データ連携基盤 作業手順 - 明細データ）
* data-platform-operations-sql-item-operation-data.sql（データ連携基盤 作業手順 - 明細作業データ）
* data-platform-operations-sql-item-operation-component-data.sql（データ連携基盤 作業手順 - 明細作業構成品目データ）
* data-platform-operations-sql-header-doc-data.sql（データ連携基盤 作業手順 - ヘッダ文書データ)
* data-platform-operations-sql-item-doc-data.sql（データ連携基盤 作業手順 - 明細文書データ)

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。