[].class# => Array

anything = [1, 'apple', 2, 'orange', 3, 'bontemps']
puts anything.size# => 6
#insert
anything[6] = 4
anything[8] = 5#6と7の間がnull
#削除
anything.delete_at(8)
anything.delete_at(7)

pp anything

#多重代入
x, y = [1, 2]#x=1:y=2
w, h = [10] #c=10:d=null
n, m = [5, 10, 15] #n=5:m=10

#divmod method
pp 10.divmod(3)# => [3,1]
quo_rem = 10.divmod(3)
puts "商 = #{quo_rem[0]},余り = #{quo_rem[1]}"# => "商 = 3,余り = 1"
quotient, remainder = 10.divmod(3)
puts "商 = #{quotient},余り = #{remainder}"# => "商 = 3,余り = 1"

#map/collect method
minit = [0, 10, 20, 30, 40, 50]
time = []
minit.each{|n| time << n * 2}
pp time
second = minit.map{|n| n / 2}
pp second

#select/find_all/reject method
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
even_numbers = numbers.select{|n| n.even?}
pp even_numbers#=> [2, 4, 6, 8, 10]
odd_numbers = numbers.reject{|n| n.even?}
pp odd_numbers

#find/detect method
eVen_number = numbers.find{|n| n.even?}
pp eVen_number

#sum method
pp numbers.sum#=> 55
chars = ['a', 'b', 'c']
chars1 = chars.sum("")
pp chars1

#join method
chars2 = chars.join
pp chars2
chars3 = chars.join('-')
pp chars3

data = ['a', 2, 'b', 4]
data_join = data.join
pp data_join

#chars method
pp 'Ruby'.chars#=> ["R", "u", "b", "y"]

#split method
pp 'Ruby,Java,Python'.split(',')#=> ["Ruby","Java","Python"]

#Array.new method
a = Array.new(5)
pp a#=> [nil, nil, nil, nil, nil]
b = Array.new(5, 0)
pp b#=> [0, 0, 0, 0, 0]
pp c = Array.new(10){|n| n % 3 + 1}#=> [1, 2, 3, 1, 2, 3, 1, 2, 3, 1]

def foo(a, *b, c, d)
    pp "a=#{a}, b=#{b}, c=#{c}, d=#{d}"
end
foo(1, 2, 3, 4, 5)#=> a=1, b=[2, 3], c=4, d=5



