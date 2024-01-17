#''で囲むと\nは文字扱い
puts 'Hello \n World!'
#""で囲むと\nは改行扱い
puts "Hello \n World!"

#式展開
num = 10
label = 'こんにちは'
puts 'Hello : #{label}'; puts "Hello : #{label}"
puts '10進数:#{num} 16進数:#{num.to_s(16)}' ; puts "10進数:#{num} 16進数:#{num.to_s(16)}"

#エスケープ処理
puts "ダブルクオーテーション無効"
puts "Hello \\n World!"; puts "Hello : \#{label}"
puts "He said, \"Don't speak.\""

#バイト表示
puts 'a'.bytes

#%記法
puts %q!He said, "Don't speak." !   #シングルクオートと同じ扱い
puts %Q!He said, "Don't speak."!   #ダブルクオートと同じ扱い
puts %!He said, "Don't speak."!     #これもダブルクオート

#ヒアドキュメント
<<HTML
    <div>
    <img src="sample.png">
    </div>
HTML
name = 'hogehoge'
here_doc = <<TEXT
ようこそ、#{name}さん!
TEXT
puts here_doc
c = [<<TEXT1, <<TEXT2]
Alice
Bob
TEXT1
Matz
Juchito
TEXT2
puts c[0]
puts c[1]

#sprints method
puts sprintf('%0.3f', 1.2)
puts '%0.3f + %0.3f' % [1.2, 0.48]

#join method
puts [10,20,30].join

#繰り返し
puts 'hoge' * 10

#Unicode
puts "\u3042\u3044\u3046\u3048\u304A"

#upcase method
label = 'ruby'
puts label.upcase
label.upcase!
puts label
