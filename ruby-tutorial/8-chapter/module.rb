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
