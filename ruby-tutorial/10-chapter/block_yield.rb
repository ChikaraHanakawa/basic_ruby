#yield method
def greet
  puts 'おはよう'
  yield
  puts 'こんばんは'
#ブロックを2回呼び出す
  yield
  yield
#block_given? method
  if block_given?
    yield
  end
end
greet do
  puts 'こんにちは'
end
