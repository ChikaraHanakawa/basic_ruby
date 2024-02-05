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

NUMBER_OF_COLORS = [1, 2, 3].map{ |n|| * 10}
NUMBER_OF_COLORS#=> [10, 20, 30]
NEW_LINE = windows? ? "\r\n" : "\n"