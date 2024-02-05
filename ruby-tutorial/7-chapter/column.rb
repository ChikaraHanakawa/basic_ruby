#変数がnilまたはfalseであれば、別の値を代入する。処理を軽くする
limit ||= 10

#引数名がない*, **
class Product
    def initialize(name, price)
        puts "name: #{name}, price: #{price}"
    end
end

class DVD < Product
    def initialize(*)
        super
    end
end
DVD.new('movie', 1000)#=> name: movie, price: 1000
=begin
子クラスのインスタンスメソッドで引数は使用しないが、super methodで使用するから渡す引数をそのままsuper methodに渡すために
敢えて、引数を省略している。また、余分に渡された引数を無視するためにも使用する。
=end

#メソッド定義が完了するとメソッド名をシンボルとして返す
def foo
    'foo'
end#=> :foo
