numbers = [1, 2, 3, 4]
sum = 0
#;でブロックパラメータを分けている
numbers.each do |n; sum|
    sum = 10
    sum += n
    puts sum
end
puts sum#=> 0
