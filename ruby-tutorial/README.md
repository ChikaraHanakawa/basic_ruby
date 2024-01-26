#20分で始めるRuby
##1. Mathと.について
Linux & vmacOs
irb
Windows
Interactive Ruby
irb(main)001:0>

irb(main)001:0>”Hello World!”
=> 同じ

nilは何もない事を表すRubyの値
irbは計算機としても利用可。3+2=5、3*2=6、3**2=9、Math.sqrt(9)=3.0
MathとはRuby標準搭載のモジュール。役割としては、関連するメソッドをグループ化する。sin()やtan()というメソッドもある。
.について一言で言うと、メッセージを指定している。メッセージとは、Math.sqrt(9)=3.0で言う所のsqrt(9)の部分。sqrtは「平方根(square root)」の省略形。sqrtというメソッドにパラメータとして9を与えて呼び出している。
##2. def
同じ処理を複数回行う場合、メソッドを定義すると効率が良くなる。
defがメソッドの定義。endでメソッドの終了。それ以降は、メソッド名又はメソッド名()でメソッドを呼び出せる。引数がないのであれば、()は省略してOK
引数があるメソッド。def メソッド名(name)	(この場合、nameが引数
引数ありでのputsは、”Hello #{name}!”とするとnameの部分が引数となる。

{name}とは、文字列に何か挿入する際に使用するRubyの機能。
irb(main):019:0> def hi(name = "World")
irb(main):020:1> puts "Hello #{name.capitalize}!"
irb(main):021:1> end
=> :hi
irb(main):022:0> hi "chris"
Hello Chris!
=> nil
irb(main):023:0> hi
Hello World!
=> nil

capitalize
	引数を大文字に変換。hiの引数にname = “World!”としてputs “Hello #{name.capitalize}!”のようなｆダブルクォーテーションで囲んだstringにする事でメソッド名 “変数”でname.capitalizeの部分に指定した変数が表示される。メソッド名のみの呼び出しだとname=の部分(つまり、World!)が表示される
##3. class
class名 = オブジェクト名.new(“何かしらの文字”)でオブジェクトに何かしらの文字を記憶させる事が可能。
クラスの全てのメソッドを確認する場合のコマンド:クラス名.instance_methods(false)
##4. for文
eachメソッド、リストｎある要素全てにdo~endまで処理を行う
joinメソッド、変数が処理できるか判断。できないなら、変数の値を文字列として出力
