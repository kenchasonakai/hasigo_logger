# はしごロガー

## サービス概要
居酒屋に行ったログを残せるアプリです。
一軒目、二軒目、三軒目...といった感じで１日の飲み歩きを記録できます。
ユーザーはLINE上から現在地からこのお店を見つけるボタンを押して候補の中から該当のお店を選ぶだけでログ登録ができます。
簡単な操作で登録出来るので記憶が朧げになる後半の飲みでもちゃんと記録に残せます。

## 登場人物
飲み歩きが好きな人！

## ユーザーが抱える課題
ふら〜っと立ち寄ったいいお店が後になって雰囲気しか思い出せない。
記憶を無くしてどんなことがあったかなんでもいいから手がかりが欲しい。
おすすめのお店をサッと提案できるようになりたい。

## 解決方法
簡単にログを残せるアプリがあればきっと思い出せる。

## プロダクト
ラインから位置情報を取得してお店を登録できるwebアプリ。
登録するお店はぐるなびapiから取得。
登録とログの閲覧はLINEアプリ上で行う。
1日の始まりは朝10時から

## マーケット
飲みに行くのが好きな20~40代くらいの人。

## 補足
LINEを使いたい理由：
1. ログイン処理を簡略化したい。
LIFFを使うとLINE経由で勝手にログインしてくれるらしく、ユーザーにログイン操作をさせなくて済みそうだから
（酔ってるときになるべく煩雑な操作をしたくない）。
2. 今いるお店情報を友達に共有したくなった時、同一アプリ上だと楽そう。
3. 外出先から使うことが前提なのでスマホ操作が簡単な画面構成にしたい。

## ER図
https://drawsql.app/kenchaso/diagrams/sakaba-logger
