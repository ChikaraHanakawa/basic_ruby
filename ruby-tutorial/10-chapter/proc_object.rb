#proc object
hello_proc = Proc.new do
  puts 'Hello!'
 end
=begin
do endの代わりに{}を利用可
  hello_proc = Proc.new{ 'Hello!' }
=end
add_proc = Proc.new { |a, b| puts a + b }

hello_proc.call#=> Hello!
add_proc.call(10, 20)#=> 30

#Proc.new以外のProcクラス定義方法
sum = proc {|a,b| a + b}
lambda_sum = ->(a, b){a + b}#上記2つと比較して引数のチェックが厳しい(->とlamda)
lambda_add = lambda{|a,b| a + b}#(a, b)であれば、(10, 20, 30)と渡すと定義した引数よりも多い(30が溢れている)のでエラー
=begin
aとbは引数であり、引数が無ければ()自体を省略できる
  ->{'Hello!'}#省略
=end

#lambda? method
add_lambda = ->(a, b){a + b}
puts add_lambda.class#=> Proc
puts add_lambda.lambda?#=> true
