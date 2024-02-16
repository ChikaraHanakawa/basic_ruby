print 'Text?:'
text = gets.chomp
 
retry_count = 0
begin
    print 'Pattern?:'
    pattern = gets.chomp
    regexp = Regexp.new(pattern)
rescue RegexpError => e
    if(retry_count < 3)
        puts "Invalid pattern: #{e.message}"
        retry_count += 1
        retry
    else
        puts "miss"
    end
end 

matches = text.scan(regexp)
if matches.size > 0
    puts "Matched: #{matches.join(',')}"
else
    puts 'Nothing matched.'
end
