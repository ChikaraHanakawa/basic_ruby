num = 11
if num>10
    puts 'more than 10'
else
    puts 'less than 10'
end

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
