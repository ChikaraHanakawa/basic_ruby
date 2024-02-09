module Greetable
    def hello
        'hello'
    end
end

#include
module Log_able
    def log(text)
        puts "#{text}"
    end
end
class Word
    include Log_able
    def text
        log 'My favorite word'
        log 'Now you do what they told ya'
    end
end
word = Word.new
word.text

#extend
module Tag_able
    def tag(text)
        puts "[Log]#{text}"
    end
end
class Product
    extend Tag_able
    def self.create_products(names)
        tag 'piropiro'
    end
end
Product.create_products([])
Product.tag("deteruyo")

Array.include?(Enumerable)#=> true
Hash.include?(Enumerable)#=> true
Range.include?(Enumerable)#=> true

#UFO演算子
2 <=> 1#=> 1
2 <=> 1#=> 0
1 <=> 2#=> -1
class Tempo
    include Comparable
    attr_reader :bpm
    def initialize(bpm)
        @bpm = bpm
    end
    def <=>(other)
        other.is_a?(Tempo) ? bpm <=> other.bpm : nil
    end
    def inspect
        "#{bpm}bpm"
    end
end
t_120 = Tempo.new(120)
t_180 = Tempo.new(180)
t_120 > t_180
t_120 < t_180
t_120 == t_180
tempos = [Tempo.new(180),Tempo.new(60),Tempo.new(120)]
pp tempos.sort#=> [60bps, 120bps, 180bps]


