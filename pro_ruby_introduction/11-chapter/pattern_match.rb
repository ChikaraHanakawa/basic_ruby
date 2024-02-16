#value pattern
country = 'italy'
message = 
case country
in 'japan'
    'こんにちは'
in 'us'
    'Hello'
in 'italy'
    'Ciao'
end
message

case country
in 'japan' then 'こんにちは'
in 'us' then 'Hello'
in 'italy' then 'Ciao'
end

#variable pattern
#ピン演算子^
alice = 'Alice'
bob = 'Bob'
name = 'Bob'
case name
in ^alice
    'Aliceさん、こんにちは'
in ^bob
    'Bobさん、こんにちは'
end

#array pattern
case [1, 2, 3, 4, 5]
in [1,]
    'matched'
end

#hash pattern
case {name:'Alice', age: 20}
in {name: name, age: age}
    "name = #{name}, age = #{age}"
end

#as pattern
case{name: 'Alece', age: 20, gender: :female}
in{name: String, age: 18.. => age}
    "name=#{name}, age#{age}"
end

#alternative pattern
case 2
in 0 | 1 | 2
    'matched'
end

#find pattern
case [1, 2, 3, 4, 5]
in [first, *]
    "first=#{first}"
end
case [1, 2, 3, 4, 5]
in [last, *]
    "last=#{last}"
end
