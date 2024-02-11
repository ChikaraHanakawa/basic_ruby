module NameDecorator
    def name
        "<<#{super}>>"
    end
end 
class Product
    prepend NameDecorator
    def name
        'movie'
    end
end
class User
    def name
        'Alce'
    end
end
class User
    prepend NameDecorator
end

product = Product.new
puts product.name
user = User.new
puts user.name
