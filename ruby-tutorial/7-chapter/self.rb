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


