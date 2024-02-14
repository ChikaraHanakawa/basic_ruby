#call method
def greet(&block)
  puts 'おはよう'
  text = block.call('こんにちは')
  puts text
  puts 'こんばんは'
end
greet do |text|
  text * 2
end
