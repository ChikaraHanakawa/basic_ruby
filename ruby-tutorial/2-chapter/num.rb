#小数点以下切り捨て
puts 1 / 2
#小数点以下表示
puts 1 / 2.to_f
#rational method
puts 0.1r * 3.0r == 0.3
a = 0.1; b = 0.3
puts a.rationalize * b.rationalize
puts (0.1r * 0.3r).to_f

#反転
t1 = true
f1 = false
puts "t1:#{t1}"; puts "t1:#{!t1}"
puts "t1 && f1:#{!(t1 && f1)}"

#2進数
puts 0b11111111
#8進数
puts 0o377
#16進数
puts 0xff
