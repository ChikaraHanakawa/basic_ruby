sum = 0
#5回繰り返し、0, 1, 2, 3, 4を足す,ブロックパラメータを省略可
pp 5.times {|n| sum += n}#=> 10

#up_to method, down_to method
a = []
pp 10.upto(14){|n| a << n}#=> [10, 11, 12, 13, 14]
pp 14.downto(10){|n| a << n}#=> [14, 13, 12, 11, 10]

#step method
b = []
1.step(10, 2) {|l| b << l}
pp b#=> [1, 3, 5, 7, 9]
c = []
10.step(1, -2) {|m| c << m}
pp c#=> [10, 8, 6, 4, 2]

#while, until
=begin
while文は真であれば実行
until文は偽であれば実行
=end
d = []
while d.size < 5
#1行に収めると while d.size < 5 do d << 1 end
    d << 1
end
pp d#=> [1, 1, 1, 1, 1]
#beginとendで挟めば、どんな条件でも一回は実行される
while false
    d << 1
end
pp d#=> [1, 1, 1, 1, 1]
begin
    d << 1
end while false
pp d#=> [1, 1, 1, 1, 1, 1]
times_10 = [10, 20, 30, 40, 50]
until times_10.size <= 3
    times_10.delete_at(-1)
end
pp times_10#=> [10, 20, 30]

#for
numbers = [1, 2, 3, 4]
all = 0
for n in numbers
#1行に収めると for n in numbers do sum += n end
    all += n
end
pp all#> 10

#loop method
=begin
敢えて無限ループを作成する
---while version---
while true
    無限ループ用の処理
end
---loop---
loop do
    無限ループ用の処理
end

break if 条件式でループから抜ける
=end

#再帰呼び出し
def factorial(n)
    n > 0 ? n * factorial(n - 1) : 1
end
pp factorial(5)#=> 120

#繰り返し処理の入れ子
egg = ['Oyakodon', 'Omelette rice', 'Fried rice', 'Raw egg on rice']
num = [1, 2, 3, 4]
egg.each do |egg|
    num.shuffle.each do |m|
        puts "#{egg}, #{m}"
        break if n == 3
    end
end
=begin
=> Oyakodon, random
...
=> Raw egg on rice, random
=end

#throw method, catch method
catch :done do
    egg.shuffle.each do |egg|
        num.shuffle.each do |l|
            puts "#{egg}:#{l}"
            if egg == 'Fried rice' && l == 3
                throw :done
            end
        end
    end
end
=begin
=> Fried rice:2
   Fried rice:4
   Fried rice:3
=end

#redo method
vegetable = ['carrot', 'watermelon', 'strawberry']
count = 0
vegetable.each do |vegetable|
    print "#{vegetable}は好きですか？ => "
    answer = 'いいえ'
    puts answer

    count += 1
    redo if answer != 'はい' && count < 2

    count = 0
end
=begin
=> carrotは好きですか？ => いいえ
   carrotは好きですか？ => いいえ
   watermelonは好きですか？ => いいえ
   watermelonは好きですか？ => いいえ
   strawberryは好きですか？ => いいえ
   strawberryは好きですか？ => いいえ
=end
