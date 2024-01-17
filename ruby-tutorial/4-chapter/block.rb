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

#eachメソッド
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

