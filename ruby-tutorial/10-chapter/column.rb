#inject method
numbers = [1, 2, 3, 4]
puts sum = numbers.inject(0){|result, n| result + n}#=> 10
puts sum10 = numbers.inject(10){|result, n| result + n}#=> 20
=begin
injectメソッドは畳み込み演算を行うメソッド。
初回計算時のみ、ブロックの引数であるresultにはinjectメソッドの引数が入る。nには配列の各要素が順番に入る。
=end
