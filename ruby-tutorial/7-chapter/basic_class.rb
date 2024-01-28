#ユーザのデータを作成
users = []
users << {first_name: 'Alice', last_name: 'Ruby', age: 20}
users << {first_name: 'Bob', last_name: 'Python', age: 30}
users.each do |user|
    puts "氏名:#{user[:first_name]} #{user[:last_name]}, 年齢:#{user[:age]}"
end
#タイピングミスだとnullが返ってくる
users[0][:first_mame]#=> nil
#勝手に新しいキー、first_nameを追加
users[0][:country] = 'japan'
users[0][:first_name] = 'Carol'
#ハッシュの中身が変更
puts users[0]#=> {:first_name=>"Carol", :last_name=>"Ruby", :age=>20, :country=>"japan"}
=begin
↑ のような問題がハッシュにはある。だから、ハッシュがある
=end

#Userクラスの定義
class User
    attr_reader :first_name, :last_name, :age

    def initialize(first_name, last_name, age)
        @first_name = first_name
        @last_name = last_name
        @age = age
    end
end

users = []
users << User.new('Alice', 'Ruby', 20)
users << User.new('Bob', 'Python', 30)

def full_name(user)
    "#{user.first_name} #{user.last_name}"
end

users.each do |user|
    puts "氏名:#{full_name(user)}, 年齢:#{user.age}"
    puts "#{user.first_name}"
end

#initialize method（他言語で言う所のコンストラクタらしい
#以下引数と付けた
class Human
    def initialize(name, age)
        puts "name: #{name}, age: #{age}"
    end
end
=begin
Human.new
    => `initialize': wrong number of arguments (given 0, expected 2) (ArgumentError)
引数を付けないとエラー
=end
Human.new('Nobita', 10)#=> name: Nobita, age: 10

#instance method
class You
    def hello
        "Hello!"
    end
end
user = You.new
#instance methodの呼び出し（ C++で言うメンバ関数
puts user.hello#=> "Hello!"

#instance variable
class Ball
    def initialize(name)
        @name = name
    end
    def soccer
        "#{@name} : Kick Off"
    end
    def name=(value)
        @name = value
    end
    def name
        @name
    end
end
sports = Ball.new('start')
puts sports.soccer#=> "start : Kick Off"
sports.name = 'end'
puts sports.name#=> "end"
=begin
以上のようなname= methodをセッターメソッドという
name methodをゲッターメソッドという
セッターとゲッターを総評してアクセサメソッドという
只、単純にいんすた変数の内容を外部から読み書きする程度であれば、Rubyではattr_accessor methodで余計なメソッド(上記で言うname method)
=end



