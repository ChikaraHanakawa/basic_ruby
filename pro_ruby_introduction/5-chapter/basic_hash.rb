#ハッシュの作り方
{}
country_bread = {'Japan'=>'japan', 'France'=>'french bread', 'England'=>'british bread'}
#追記方法
country_bread['Italy'] = 'focaccia'
pp country_bread['France']

#繰り返し処理
country_bread.each do |key, value|
    puts "#{key}:#{value}"
end
=begin
=> Japan:japan
   France:french bread
   England:british bread
   Italy:focaccia
=end

#同値比較
a = {'x'=>1, 'y'=>2, 'z'=>3}
b = {'x'=>1, 'y'=>2, 'z'=>3}
c = {'x'=>4, 'y'=>2, 'z'=>3}
d = {'y'=>2, 'z'=>3, 'x'=>1}
puts a==b
puts a==c
puts a==d
#要素数の取得
puts "bread_hash:#{country_bread.size}"
#delete
country_bread.delete('Japan')#=> japan
puts country_bread
#ブロックを利用したキーが見つからない時の返り値
country_bread.delete('india') {|key| puts "Not found: #{key} bread"}
