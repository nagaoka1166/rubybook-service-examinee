# Tesma
## URL 
・[Tesma](http://52.192.34.200/) 



https://user-images.githubusercontent.com/69971830/151195523-7835949c-19e5-4dbf-97ed-93b431d31be2.mp4

## サービス概要
Tesmaとは, 被験者を必要とする立命館大学の研究者と実験に興味がある立命館大学の学生をマッチングさせるサービスです。  
サービス名は、`tester(被験者)`と研究者を`matching(マッチング）`させるというサービスの目的から`Tesma`にいたしました。 

立命館大学チャレンジ奨学金の支援を受け、立命館大学の学生オフィス協力のもとサービス開発しております。

## 使用技術  
・ 言語: Ruby (2.7.3)  
・ フレームワーク: Rails (6.1.4.1)  
・ フロントエンド: Haml/CSS/Javascript/bootstrap5
・ DB: MySQL  
・ インフラ: Amazon S3

## なぜ作ったのか
**・被験者募集にかかる時間を短縮させたい**  
   スポーツ健康科学部では実験が盛んに行われており、先生から大学の授業中に実験への参加を度々お願いされることがあります。  
   そんな時に大学構内のエレベーターに、2ヶ月前に見かけた被験者募集のチラシがまだ貼られておりそのチラシに上書きで延長された実験期間から被験者募集にかかる時間の問題に気づき、それを解決するためにTesmaをを開発することにしました。
   
## 開発する意義

  - *研究の質が向上する。*  
        → 多くの学部生・院生に被験者募集をかけることで実験参加者の属性が偏らなくなり、[選択バイアス](https://jeaweb.jp/glossary/glossary012.html)の減少につながる。  
  - *学生に金銭的なメリットがある。*  
        → 学生に金銭的な報酬が支払われるため。
  - *学生の知識・経験を増やす機会を作れる*  
        → 専門領域の離れた学生などの学生でも実験が参加できたり、実験でしかできない体験ができるため。
       
 
## 機能
機能一覧

|  | 機能 | Gem |
|:---:|:---:|:---:|
|1|ログイン・ログアウト機能 |device|
|2|アカウント登録・ユーザー情報変更 |device|
|3|アカウント削除機能|device|
|4|アカウント削除機能|device|
|5|レスポンシブ|bootstrap|
|6|ページネーション|kaminari|
|7|実験検索機能|ransuck|
|8|応募機能|Action Mailer|
|9|学生ユーザーと研究者ユーザーの使用機能制限|×|
|10|投稿機能(CRUD)|×|
|11|募集期限を過ぎた場合に募集停止にする|×|
|12|応募履歴閲覧|×|
|13|お気に入り機能 (非同期）|×|
|14|お気に入り投稿表示機能|×|

## 工夫した点
- **直感的にサービスの用途や使い方がわかるようなサービス作りに心がけました。**
    - 他のサービスを参考にしている中に、良いサービスの共通点は、ユーザーに認知的な負荷をかけないことというのを感じたのでユーザーに優しいサービス作りを意識しました。  
- **テーブル設計**
    - Tesmaでは、`Userモデル`に対し、`Studentモデル`　or `Researcherモデル`のどちらかを関連づけています。  
    最初は、スピード感を持った開発作りをしたいため時間短縮のために、ユーザーを`Userモデル`一つにまとめようと思いました。  
しかし、将来的に機能拡張を増やそうと思った場合に`Userモデル`に、`Studentモデル`か`Researcherモデル`を紐付けた方が柔軟性が出ると判断いたし現在のテーブル設計にいたしました。  
- **レスポンシブ対応**
    - Googleフォームで被験者募集サービスを使う場合に、何の媒体で`tesma`を使用するか聞きました。その結果の20名のうちの`95%`が主にスマートフォンでサービスを使うと答えました。その結果を見て、スマートフォンのUI作りに力を入れさせていただきました。  
    - ネットのCSSチートシートを参考に作りました。CSSの学習経験が少ないためチートシートのデザインをTesmaのHTML階層に反映させるのに多くの時間がかかりましたが、検証ツールで適宜CSSの適用状態を確認するように心がけフロントの開発をいたしました。
   
https://user-images.githubusercontent.com/69971830/151197215-af9a65a7-fb58-4ad3-8636-5f8761bbc8ff.mp4


    

## サービスの問題点と改善策
- *荒らしなどが発生する可能性がある。*  
     → 正式リリースまでに、ユーザー登録時の大学ドメインのメール認証機能を導入し、匿名性を防ぐことで荒らしを防止する  
- *トップページがないため、サービスの概要について理解してもらえない可能性がある。*  
     → トップページを作る。 or サービスの概要をまとめた画像やpdfのリンクを差し込む  
- *無料期間中のawsに依存しているため、ドメインとインスタンスに問題がある*  
     → 独自ドメインを取得し、他のサーバーにデプロイする。
        

## これからのやること・目標
春休み中にサービスの友人や知人に対してβ版をリリースさせる予定です。
またこのサービスによって達成したい目標は以下です。

・今年度の9月までに学内のユーザー数`300人`を達成させる。  
・`React`や`vue.js`用いたトップページを作る  
・大学教授と話し合いサービスの利用規約や研究倫理を決める。  
・適宜サービスの修正や利用者の意見をもとに機能の追加　


