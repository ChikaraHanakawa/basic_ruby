#if文
num = 11
if num>10
    puts 'more than 10'
else
    puts 'less than 10'
end
#if文を使わない条件分岐
puts num > 10 ? 'more than 10' : 'less than 10'

country = 'italy'
if country == 'japan'
    puts 'こんにちは'
elsif country == 'us'
    puts 'Hello'
elsif country == 'italy'
    puts 'Ciao'
else
    puts '???'
end

greeting =
    if country == 'japan'
        'こんにちは'
    elsif country == 'us'
        'Hello'
    elsif country == 'italy'
        'Ciao'
    else
        '???'
    end
#puts greeting

vegetable = 10
form = 4
vegetable *= 10 if form == 4
puts vegetable

#if文を使わない真偽値の条件分岐
puts 1 && 2 &&3 #=> 3
puts 1 && nil && 2 #=> nil
puts 1 && false && 3 #=> false
puts nil || false # => false
puts false || nil # => nil
puts nil || false || 2 && 3 # => 3

#unless
status = 'error'
unless status == 'ok'
    puts "異常アリ"
else
    puts "正常"
end

#case
case country
when 'japan', '日本'
    puts 'こんにちは'
when 'us', 'アメリカ'
    puts 'Hello'
when 'italy', 'イタリア'
    puts 'Ciao'
else
    '???'
end
