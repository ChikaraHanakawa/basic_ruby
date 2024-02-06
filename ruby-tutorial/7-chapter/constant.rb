#classの外部から定数を参照
class Product
    DEFAULT_PRICE = 0
end
Product::DEFAULT_PRICE#=> 0
=begin
class Product
    DEFAULT_PRICE = 0
    private_constant :DEFAULT_PRICE
end
#privateなのでclass外部から参照できない
Product::DEFAULT_PRICE#=> in `<main>': private constant Product::DEFAULT_PRICE referenced (NameError)
=end
class TrafficLight
    COLORS = [
        GREEN = 0,
        YELLOW = 1,
        RED = 2
    ]
end
TrafficLight::GREEN#=> 0
TrafficLight::YELLOW#=> 1
TrafficLight::RED#=> 2
TrafficLight::COLORS#=> [0, 1, 2]

class Product
    DEFAULT_PRICE = 0
    DEFAULT_PRICE = 1000
end
Product::DEFAULT_PRICE #=> 1000
Product::DEFAULT_PRICE = 2000
Product::DEFAULT_PRICE #=> 2000
#定数は既に初期化済みですよ[warning: already initialized constant Product::DEFAULT_PRICE]という警告が出る

#定数を凍結する
#Product.freeze
#Product::DEFAULT_PRICE 
    #=> RuntimeError: can't modify frozen Module
#Product::DEFAULT_PRICE = 3000 
    #=> RuntimeError: can't modify frozen Module

#map methodを利用して配列の各要素にfreeze method
SOME_NAMES = ['Foo', 'Bar', 'Baz'].map(&:freeze).freeze
