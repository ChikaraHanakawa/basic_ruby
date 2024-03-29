#selfキーワード JavaやC#だとthisキーワードに当たる
class User
    attr_accessor :name
    def initialize(name)
        @name = name
    end
    def hello
        #self無しの場合
        "Hello, I am #{name}."
    end
    def hi
        #self有りの場合
        "Hi, I am #{self.name}."
    end
    def my_name
        #直接インスタンス変数の@nameにアクセス
        "My name is #{@name}."
    end
end
user = User.new('Alice')
user.hello#=> "Hello, I am Alice."
user.hi#=> "Hi, I am Alice."
user.my_name#=> "My name is Alice."

class Foo
    #このputsはクラスの定義の読み込み時に呼び出される
    puts "クラス構文直下のself: #{self}"
    def self.bar
        puts "クラスメソッド内のself: #{self}"
    end
    def baz
        puts "インスタンスメソッド内のself: #{self}"
    end
end
 #=> クラス構文直下のself: Foo
Foo.bar#=> クラスメソッド内のself: Foo
foo = Foo.new
foo.baz#=> インスタンスメソッド内のself: #<Foo:0x000055e981d60400>
=begin
クラス構文直下とクラスメソッド内のselfはFooクラス自身を表示しています。インスタンスメソッドはFooクラスのインスタンスを表示している。
だから、インスタンスメソッド内でクラスメソッドを呼び出す事は出来ない、またその逆も然り
=end
class Greeting
    #クラス定義が読み込まれたタイミングで"Hello!"を3回出力
    3.times do
        puts 'Hello!'
    end
end
#=> Hello!
#   Hello!
#   Hello!

#class methodからinstance methodを呼び出したい場合
#クラス名.メソッド名
class Product
    attr_reader :name, :price
    def initialize(name, price)
        @name = name
        @price = price
    end
    def self.format_price(price)
        "#{price}円"
    end
    def to_s
        #インスタンスメソッドからクラスメソッドを呼び出す
        formatted_price = Product.format_price(price)
        "name: #{name}, price: #{formatted_price}"
    end
end
product = Product.new('A great movie', 1000)
puts product.to_s#=> name: A great movie, price: 1000円

