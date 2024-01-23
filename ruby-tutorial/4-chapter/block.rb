=begin
JavaScript
ver numbers = [1, 2, 3, 4]
ver sum = 0
for (var i = 0;i < numbers.length; i++){
    sum += numbers[i]
}
console.log(sum) //=> 10
-----------------
forEachメソッド
const numbers = [1, 2, 3, 4]
let sum = 0
numbers.forEach(function(n){
    sum += n
})
console.log(sum) //=> 10
=end

#each method
numbers = [1, 2, 3, 4]
sum = 0
numbers.each do |n|
    sum += n
end
puts sum#=> 10

#delete method
num = [1, 2, 3, 4, 5]
num.delete_if do |n|
    n.odd?
end
pp num# =>[2, 4]

#{}
numbers.each{|n| sum += n}
p sum#=> 20

#each_with_index method
fruits = ['apple', 'orange', 'melon']
fruits.each_with_index {|fruit, i| puts "#{i}: #{fruit}"}

#map & with_index
fruits.map.with_index {|fruit, i| pp "#{i}: #{fruit}"}
#delete & with_index
breads = ['french bread', 'bagel', 'british bread', 'focaccia', 'japan']
breads.delete_if.with_index do |bread, i|
    pp "#{i} : #{bread}"
    bread.include?('b') || i.odd?
end
#添字を1から始める
breads = ['french bread', 'bagel', 'british bread', 'focaccia', 'japan']
breads.each.with_index(1) {|bread, i| puts "#{bread} : #{i}"}

dimensions = [[10, 20], [30, 40], [50, 60],]
areas = []
dimensions.each do |dimension|
    length = dimension[0]
    width = dimension[1]
    areas << length * width
end
pp areas#=> [200, 1200, 3000]
#簡略化
dimensions.each do |length, width|
    areas << length * width
end
pp areas

#3つのブロックパラメータの内2つに配列の要素を入れる場合
dimensions.each_with_index do |(length, width), index|#()を利用しないと配列の2つの要素が一つのブロックパラメータに入ってしまう
    puts "length:#{length}, width:#{width}, index:#{index}"
end
(len, wid), ind = [[10, 20], 0]
#=> len = 10, wid = 20, ind = 0

