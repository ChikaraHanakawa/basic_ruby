#ensure
begin
    #発生するかもしれない処理
rescue
    #例外発生時の処理
else
    #例外が発生しなかった場合の処理
ensure
    #例外の有無に関わらず実行する処理
end

#begin/endの省略
def to_date(string)
    Date.parse(string) rescue nil
end
to_date('2023-12-31')
to_date('abcdefghij')

#rescueした例外
def fizz_buzz(n)
    if n % 15 == 0
        'FizzBuzz'
    elsif n % 3 == 0
        'Fizz'
    elsif n % 5 == 0
        'Buzz'
    else
        n.to_s
    end
    rescue => e
    puts "{LOG}ERROR:#{e.class} #{e.message}"
    raise
end
fizz_buzz(nil)

