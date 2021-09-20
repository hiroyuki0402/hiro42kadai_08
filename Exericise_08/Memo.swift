//
//  Memo.swift
//  Exericise_08
//
//  Created by 白石裕幸 on 2021/09/17.
//

/*やること
 0: タブバーを二つ用意する
 1: スライダーで値を変更させる（max: 1.0, min: 0.0）
 2:　ラベルに表示させる
 3:　TABを切り替えても値が表示されてる
 4: 切り替えたタブでも1:からできる
 */

// 値の共有はAppdelegateでするか > Appdelegateはあまり推奨されてないそう・・

// 型はAnyやジェネリクスでやったほうが良いのか > 一旦型を宣言時に決める事にする

// タブ切り替えた時にス ライダーのつまみが移動しない > 解決(sliderのvalueも設定させるように記述する)

/*
 タブ変更時にLabelに値が反映されない >　インスタンスに原因がありそう・・タブ切り替わる度にインスタンスされちゃうのか・・ >　シングルトンで解決
　シングルトン一度だけインスタンスする・・参考記事　https://atmarkit.itmedia.co.jp/ait/articles/0408/10/news088.html <　原因がこれかは自信なし
 */

// 前回のフィードバック　＞　今回はスライダーだから他で使わない想定としてファイルも限定的でも良いかも・・

/*これまでののフィードバック

 #課題7
 * CustomTabBarController を設定
 * CustomTabBarController の viewDidLoad で、 Addition と Subtraction のインスタンスをセット
 * resultValue は button アクションでしか使っていないので、プロパティにする必要はないと思います
 * ViewController が UITabBarController 内に配置されていることを前提にしてしまっているので、 UITabBarController 外では使えない画面になってしまっています
 * configure メソッドで外から渡された Calculation 適合クラスを使うという形にしました。これによって、 UITabBarController 外でも使える画面になりました
 * 外から渡された Calculation をプロパティに格納

 #課題6
 * sliderNum をプロパティにする必要はありません
 * 起動時に1回だけ実行すれば良い処理は viewDidLoad に移動しました
 * self. は不要です

 #課題5
 * 01, 02 という命名はあまり見かけないので避けましょう
 * isCheck は不要になったので削除しました
 * 入力値のチェック処理が checkingTheValue メソッドと calculate メソッドに分散することで、処理が複雑になってしまっています
 * 入力値のチェック処理が checkingTheValue メソッドと calculate メソッドに分散することで、処理が複雑になってしまっています
 * この処理をわざわざメソッド化する意味はほとんど無いように見えます
 * この setAlerMessage メソッドには存在価値がほとんどないように見えます
 * 異常値のチェック処理はここに集約しました
 * 計算処理とラベルへの表示処理はここに集約しました
 * アラート表示のみに専念する presentAlert メソッドを作りました

 #課題4
 ラベル更新処理をメソッドにまとめてみました

 #課題2
 * 不要なコメントは削除しましょう
 * 数値変換の処理はまとめましょう
 * わざわざ switch せず、 Operator に対してそのまま calculate メソッドを呼べば良いです
 * description を使ってはいけません

 #課題1
 * private 付けましょう
 * requiredNumber は変更しないので let で良いと思います
 * メソッド名の先頭を動詞にしました
 * メソッド名を動詞にしました
 * 0 で初期化しましょう
 * forEach を使うとよりスッキリ書けます

 */
