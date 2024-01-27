#/ 正規表現 /
r = /\d{3}-d{4}/
puts r.class#=> Regexp
#検索-マッチした文字列の開始位置に返る
puts '123-4567' =~ /\d{3}-\d{4}/#=> 0
puts 'hello' =~ /\d{3}-\d{4}/#=> nil
puts 'hello' !~ /\d{3}-\d{4}/#=> true
puts '123-4567' !~ /\d{3}-\d{4}/#=> false
