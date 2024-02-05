class Greet
    def initialize(prefix)
        @prefix = prefix
    end
    #デフォルトはpublic
    public
    def mornig
        "#{@prefix} morning!"
    end
    #ここからはprivate
    private
    def afternoon
        "#{@prefix} afternoon."
    end
    #ここからはprotected
    protected
    def evening
        "#{@prefix} evening."
    end
end
user = Greet.new('Good')

class Product
    private
    def name
        'But Not for Me'
    end
end
class CD < Product
    def to_s
        "name: #{name}"
    end
end
cd = CD.new
cd.to_s#=> name: But Not for Me
