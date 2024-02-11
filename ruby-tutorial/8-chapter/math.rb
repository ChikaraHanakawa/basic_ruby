pp Math.sqrt(2)#=> 1.4142135623730951
class Calculator
    include Math
    def calc_sqrt(n)
        sqrt(n)
    end
end
calculator = Calculator.new
calculator.calc_sqrt(2)#=> 1.4142135623730951

pp Math::E#自然対数の底
pp Math::PI#円周率
