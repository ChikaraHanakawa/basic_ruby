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
