#begin rescue =>
begin
  1 / 0
 rescue => e
  puts "エラークラス : #{e.class}"
  puts "エラークラス : #{e.message}"
  puts "バックトレース -----"
  puts e.backtrace
  puts "-----"
end

#classの例外処理
begin
  1 / 0
  'abc'.foo
rescue ZeroDivisionError
  puts '0で除算しました'
rescue NoMethodError
  puts '存在しないメソッドが呼び出されました'
 rescue ZeroDivisionError, NomethodError
  puts '0で除算したあるいは存在しないメソッドが呼び出されました'
end

