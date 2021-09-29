# perfect-ruby-on-rails
書籍「パーフェクトRuby on Rails」内に書かれているコードを実際に写経した履歴を残すためのリポジトリ

## 書籍のリポジトリ
https://github.com/perfect-ruby-on-rails

# ディレクトリ概要
## awesome_events
書籍6章以降の内容を写経した
## chapter2
Ruby on Railsの基本
## chapter3
DB基本操作
## chapter3_db_sample
複数DB対応方法
## chapter4
Webpacker
## chapter4-2
SprocketsによるCSS管理
## chapter4-3
rails-ujsによる画面制御
## chapter4-3-2
Turbolinksによる画面遷移の高速化
## chapter5
Active Job
## chapter5-2
Active Storage
## chapter5-3
Action Mailer
## chapter5-4
Action Mailbox
## chapter5-5
Action Text
## chapter5-6
Action Cable

# 書籍と本ソースコードの違い
- ruby2.6を書籍は推奨しているが、ruby3を使用
- gemは基本的に最新のバージョンを使用

これらは、自分でトラブルシューティングをできるようになるために、  
あえて最新のバージョンを使用するようにした。

## 飛ばした箇所
最新のバージョンを使っているので、書籍のままでは動作しない箇所があった。  
自力で解決できた箇所もあるが、できなかった箇所もある。  
その箇所は以下の通り。

### ページ
p.330 ~ p.336
`click_on "Githubでログイン"`で`no route error`が発生する。  
原因を特定できなかったため飛ばした。