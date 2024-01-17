#文字列
puts '1'.to_s
#数値
puts 1.to_s
#null
puts nil.to_s
#true
puts true.to_s
#false
puts false.to_s
#正規表現
puts /\d+/.to_s

#数値の1を文字列に変換  括弧有り
puts 1.to_s()
#数値の1を文字列に変換　括弧無し
puts 1.to_s
#数値を16進数の文字列に変換　括弧有り
puts 10.to_s(16)
#数値を16進数の文字列に変換　括弧無し
puts 10.to_s 16

#改行毎にメソッドを実行
puts 1.to_s
puts nil.to_s
puts 10.to_s(16)

#;で複数の処理を1行に収める
puts 1.to_s; nil.to_s; 10.to_s(16)

#\で文の継続
puts 10.to_s \
16

=begin
↑ から
コメント
↓まで
=end

#多重代入(代入する値が1つの場合、右辺にはnullが入る)
a, b = 1, 2
puts a; puts b
#同値を2つの変数に代入
c = d = "hello"
c.upcase!   #大文字変換
puts c; puts d  #同時に代入すると処理も一緒になってしまう

#and, or, not
t1 = true
f1 = false
puts t1 and f1 # => false
puts t1 or f1 # => true
puts !f1 || t1 # => ture

#alius method 機能は同じメソッド
puts c.length # => 5
puts c.size # => 5

