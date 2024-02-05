class User
end
#Userクラスには何も定義してないが、to_sやnil?メソッドを呼び出せる
user = User.new
puts user.to_s#=> #<User:0x000055d27a2260f8>
puts user.nil?#=> false
#これはUserクラスがObjectクラスを継承しているから
puts User.superclass#=> Object

#instance_of?は引数で指定したクラスそのもののインスタンスでないとtrueにならない
user.instance_of?(Object)#=> false
#is_a?はis-a関係にあればtureになる
user.is_a?(User)#=> true
user.is_a?(Object)#=> true
user.is_a?(BasicObject)#=> true
#is_a関係ない場合はfalse
user.is_a?(String)#=> false

=begin
子クラスが親クラスを継承する方法
class サブクラス < スーバークラス
end
=end

class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
    def to_s#over ride
        "name: #{name}, price: #{price}"
    end
end
class DVD < Product
    attr_reader :running_time
    def initialize(name, price, running_time)
        super(name, price)
        @running_time = running_time
    end
    def to_s#over ride
        "name: #{@name}, price: #{@price}, running_time: #{@running_time}, super( #{super} )"
    end
end
dvd = DVD.new('Love Live! School Idol Movie', 1000, 100)
puts dvd.name#=> 映画タイトル
puts dvd.price#=> 価格
puts dvd.running_time#=> 100
puts dvd.to_s



