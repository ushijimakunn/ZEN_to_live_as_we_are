### サービス概要

瞑想が気になっているが、いまいち何がいいのかわからない、瞑想をやっているが、どんな変化があるかわからない、そんな人に向けた、明確な瞑想の効果を訴求する瞑想実践サービス。

### メインのターゲットユーザー

- 瞑想が気になっている、あるいはなんとなくやっている人々
- 人生に漠然とした悩みを抱える多くの人がターゲットとしたい

### ユーザーが抱える課題

- 瞑想の効果がいまいちわからない
- 瞑想をやっているが、何か変化しているのかわからない
- 瞑想が続かない

### 解決方法

科学的根拠に基づいた瞑想の方法、効果を分かりやすく提示することで、瞑想の効果を確認しながら実践することができる。

### 実装予定の機能

- 未登録ユーザー
  - ユーザー登録
  - ユーザーがLPを閲覧できる
  - ユーザーが瞑想のお試し体験を実施できる

- 登録ユーザー
  - ログイン、ログアウト、退会
  - ユーザーが、瞑想を実施できる
    - 瞑想の設定項目
      - タイマー時間
      - ベルの音の種類
      - 背景音楽（Spotifyと連携）
  - ユーザーが瞑想の実施をTwitterでシェアできる
  - ユーザーが、これまでの瞑想時間を記録・確認できる
    - 確認事項
      - 瞑想のトータル時間
      - 実施した合計日数
      - 実施した日（カレンダー表示）
      - 今日までの瞑想実施連続日数
  - ユーザーがこれまでのトータルの瞑想時間から、どんな効果が得られているのかを確認できる
    - 瞑想タイマー終了後に、効果を記載したページを表示する。また、マイページからも期待できる効果を確認できる。
    - 効果内容（例）
      - 5分の瞑想を１回実施 → リラクゼーション効果
      - 15分の瞑想を１回実施 → 決断力の向上
      - 20分の瞑想を連続14日 → ワーキングメモリの向上 → 緊張・不安に強くなる
      - 30分の瞑想を連続８週間（56日） → 前頭葉の肥大化 → 自制心・集中力・決断力の大幅な向上
  - ユーザーが瞑想のコースを選択し、実施できる
    - 各コースでは、瞑想の方法、期待される効果を記載する。
    - 瞑想コース（例）
      - 標準機能(タイマー機能のみ)
      - ヴィパッサナー瞑想
      - 慈悲の瞑想
      - マハサーティ瞑想
- 管理ユーザー
  - 登録ユーザーの検索、一覧、詳細、編集
  - 瞑想コースの一覧・詳細・作成・編集・削除

### なぜこのサービスを作りたいのか？

忙殺される日々の中で、なんのために働くのかがわからず苦しんでいた時、人生が変わるという瞑想の方法を知った。瞑想を続けていく中で、自分の変化を感じることができた。
これには、自分が瞑想の実践方法と効果をあらかじめ知っていたので、より効率的に瞑想の効果を実感できたと思う。
この体験から、瞑想の方法と効果を常に把握しながら実践できるサービスを作りたくなった。
自分が感じた瞑想の効果を、サービスを通していろんな人に体験してほしいと思う。

#### 自分が実感している瞑想の効果

- 自分を第３者的な視点で見ることができる
  - 自分の感情を冷静に見ることができる
  - 落ちこんだ時でも立ち上がりが早くなる
  - 自己肯定感が高まる
  - メンタルが強くなる
- 自己対話が上手くなる
  - 自分が何を大事にしたいかが見えてくる
  - やるやらないの判断軸が明確になってくる
  - 自分が目指したいところが明確になる

### スケジュール

- 企画〜技術調査：1/15〆切
- README〜ER図作成：1/15 〆切
- メイン機能実装：1/15 - 2/15
- β版をRUNTEQ内リリース（MVP）：2/15〆切
- 本番リリース：3月1日

### 画面遷移図

[画面遷移図 figma](https://www.figma.com/file/nb1NUI4e0r3rX1AVupLkRX/ZEN_to_live_as_we_are?node-id=0%3A1&t=Dir3vXaWk7B7buyW-1)
