#取得の位置と長さの指定
num = [1, 2, 3, 4, 5]
pp num[1, 3]#=> [2, 3, 4]

#values_at method(複数指定)
num_value = num.values_at(0, 2, 4)
pp num_value#=> [1, 3, 5]

#最後の要素を取得
pp num[num.size - 1]#=> [5]
pp num[num.size - 2]#=> [4]
pp num[num.size - 3]#=> [3]

#last method
pp num.last#=> 5
pp num.last(2)#=> [4, 5]

#first method
pp num.first#=> [1]
pp num.first(2)#=> [1, 2]

=begin
指定可能な負の値よりも小さくするとエラー
'以下一例'
num[-6] = 0
    => IndexError (index -6 too small for array; minimum: -5)
=end

#push method
num.push(6)
pp num#=> [1, 2, 3, 4, 5, 6]

#2つ目から3要素分を100に置き換える
replace = [1, 3, 5, 7, 9, 11]
replace[1, 3] = 100
pp replace

#delete method
a = [1, 2, 3, 1, 2, 3]
pp a.delete(2)#=> [1, 3, 1, 3]
pp a.delete(5)#=> nil

#concat method
main = [1]
sub = [2, 3]
pp main + sub#=> [1, 2, 3]
pp main#=> [1]
pp main.concat(sub)#=>[1, 2, 3]
pp main#=> [1, 2, 3]
=begin
concat methodと+演算子との違いは破壊的かどうか。
concat methodがメソッドを呼び出した配列が変更される。
=end

#和集合 差集合 積集合(非破壊的)
assembly_A = [1, 2, 3]
assembly_B = [3, 4, 5]
pp assembly_A | assembly_B#=> [1, 2, 3, 4, 5]
pp assembly_A - assembly_B#=> [1, 2]
pp assembly_A & assembly_B#=> [3]
#set class
require 'set'
set_A = Set[1, 2, 3]
set_B = Set[3, 4, 5]
pp set_A | set_B#=> #<Set: {1, 2, 3, 4, 5}>
pp set_A - set_B#=> #<Set: {1, 2}>
pp set_A & set_B#=> #<Set: {3}>

#*を利用した多重代入
c, *d = 100, 200, 300#c => 100 d => [200, 300]
e, * = 100, 200, 300#e => 100 : 100以外の要素の無視
a, *i, u, e, o = 1, 2, 3, 4, 5, 6
=begin
a => 1
i => [2, 3]
u => 4
e => 5
o => 6
=end
a, *b, c, d = 1, 2, 3
=begin
a => 1
b => []
c => 2
d => 3
=end
g = [1, 2, 3]
pp  [-1, 0, *g, 4, 5]#[-1, 0] + g + [4, 5]

#string array
['apple', 'melon', 'orange']
%w!apple melon orange!
%w(
    apple
    melon
    orange
)
#["apple", "melon", "orange"]
%w!big\ apple small\ melon \\ double\\ orange!#["big apple", "small melon", "double orange"]
prefix = 'This is'
pp %W(#(prefix)\an\apple small\n melon orange)#["#(prefix)\an\apple", "small\n", "melon", "orange"]
