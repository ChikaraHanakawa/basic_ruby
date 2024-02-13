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

#retry
retry_count = 0
begin
    puts '処理を開始'
    1 / 0
rescue
    retry_count += 1
    if retry_count <= 3
        puts 'もう一度'
        retry
    else
        puts '失敗'
    end
end

#raise method
def currency_of(country)
    case country
    when :japan
        'yen'
    when :us
        'dollar'
    when :india
        'rupee'
    else
        raise ArgumentError, "無効な国名 #{country}"
    end
end
currency_of(:italy)
