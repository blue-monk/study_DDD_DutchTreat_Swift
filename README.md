# DDD の勉強 Swift編
 〜 2020年中に DDD をマスターするために 〜

## お題

[レガシーをぶっつぶせ。現場でDDD！2nd 「インプット＜アウトプット！」第二部](https://genbade-ddd.connpass.com/event/156063/)

で実施された「モデリングワークショップ 〜割り勘ドメイン編〜(かとじゅん)」のお題を少し膨らませて DDD と Swift の練習をしてみました。

[j5ik2o/warikan-domain](https://github.com/j5ik2o/warikan-domain)


## 追加した仕様

* 飲み会には「主催者」が必ず1人いる
* 飲み会には「幹事」が1人以上いる
* 割り勘計算では、通貨を指定できる
    * 円
    * ドル
* 割り勘計算では、丸めモードを指定できる
    * 四捨五入
    * 切り捨て
    * 切り上げ
    * bankers
* 割り勘計算では、支払金額の単位を指定できる
    * 1円単位
    * 10円単位
    * 100円単位
* 割り勘計算では、差額が発生した場合の調整方法を指定できる
    * 主催者に対して調整する
    * 幹事の1人に対して調整する
    * 一般参加者の1人に対して調整する
    * ランダムに選択した1人に対して調整する

## モデル

実装前のラフスケッチ
![WarikanDomain_ラフスケッチ](https://user-images.githubusercontent.com/10943601/73184157-54e1bc80-415f-11ea-9ef7-5657b76e88be.png)

かなり適当ですみません。

最後の方は考えるのが面倒になって「後は実装で！」って感じです。
追加仕様も実装しながら思いついたやつもあったり。

違うように実装した部分もありますが、
モデル <--> コード の行き来はやってなくて、実装が反映されたモデルはありません。

もう少しでかくなると俯瞰したくなるとは思いますが、Swiftでリバースできるツールとかあるんでしょうか？

Javaでも実装していて、その時は [dddjava/jig](https://github.com/dddjava/jig.git) を使って依存関係のチェックをしていました。これは超便利ですね。

Swiftでは、残念ながらそんなツールを今のところ見つけられていません。
目視でチェックしました（無理だ...）

このラフスケッチは [astah* UML pad](https://apps.apple.com/us/app/astah-uml-pad/id409312603?l=ja) で書いたものです。
「astah* UML pad」は全然進化していないのが辛いところです。
モデリングは、カフェで珈琲を飲みながら iPad でやりたい派なので、良いツールが出てこないかな...
Jigのようなツールも。

## 環境

* macOS Catalina 10.15.2
* Xcode11.3.1

* Mojaveだと Xcode11 で開けました

