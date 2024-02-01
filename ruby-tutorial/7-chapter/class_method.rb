class User
    def initialize(name)
        @name = name
    end
    def hello
        "Hello, I am #{@name}."
    end
end
alice = User.new('Alice')
puts alice.hello#=> "Hello, I am Alice"
bob = User.new('Bob')
puts bob.hello#=> "Hello, I am Bob."

=begin
#クラスメソッドを定義する方法1
class クラス名
    def self. クラスメソッド
        #クラスメソッドの処理
    end
end
#クラスメソッドを定義する方法2
class クラス名
    class << self
        def クラスメソッド
            #クラスメソッドの処理
        end
    end
end
=end

#create_users method
class Youser
    def initialize(name)
        @name = name
    end
    def self.create_users(names)
        names.map do |name|
            Youser.new(name)
        end
    end
    def hello
        "Hello, I am #{@name}."
    end
end
names = ['Alice', 'Bob', 'Carol']
yousers = Youser.create_users(names)
yousers.each do |youser|
    puts youser.hello
end
#=> Hello, I am Alice.
#=> Hello, I am Bob.
#=> Hello, I am Carol.

class Ser
    def initialize(name)
        @name = name
    end
    def self.create_users(names)
        names.map do |name|
            User.new(name)
        end
    end
    def hello
        "Hello, I am #{@name}"
    end
end
names = ['Alice', 'Bob', 'Carol']
users = Ser.create_users(names)
users.each do |user|
    puts user.hello
end
#=> Hello, I am Alice.
#   Hello, I am Bob.
#   Hello, I am Carol.

class Product
    DEFAULT_PRICE = 0
    attr_reader :name, :price
    def initialize(name, price = DEFAULT_PRICE)
        @name = name
        @price = price

    end
end
product = Product.new('A free movie')
puts product.price#=> 0


