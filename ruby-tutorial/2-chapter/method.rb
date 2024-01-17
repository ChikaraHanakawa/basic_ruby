def greet(country)
    return 'country nothing' if country.nil?
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        puts 'Hello'
    end
end
greet(nil)
greet('us')

def janken(hand = 'rock')
    if hand == 'rock'
        puts 'グー'
    elsif hand == 'paper'
        puts 'パー'
    else
        puts 'チョキ'
    end
end
janken
janken('???')

#述語method
puts 'abc'.empty? # =>false
puts 'watch'.include?('at') # =>true
puts 1.odd? # =>true
puts 1.even? # =>false
puts nil.nil? # =>ture

#endless method
=begin
通常
def see
    'movie'
end
=end
def see = 'movie'
puts see
=begin
def add(x, y)
    x + y
end
=end
def add(x, y) = x + y
puts add(1, 2)
