one_five = 1..5
#1...5 5は含まれない
a_e = 'a'..'e'
#'a'...'e'

(1..5).class#=> Range
(1...5).class#=> Range

puts one_five.include?(1)
puts (1...5).include?(5)

nums = [1, 2, 3, 4, 5]
chars = 'abcde'
pp nums[1..3]#=> [2, 3, 4]
pp chars[1..3]#=> "bcd"

#range object
def january?(day)
    (1..31).include?(day)
end
puts january?(0)
puts january?(18)

#case
def charge(age)
    case age
    when 0.5
        0
    when 6..12
        300
    when 13..18
        600
    else
        1000
    end
end
puts charge(3)
puts charge(6)
puts charge(12)
puts charge(25)

array_one_five = one_five.to_a#[*1..5]も同じ
pp array_one_five#=> [1, 2, 3, 4, 5]

number = []
(1..10).step(2) {|n| number << n}
pp number
