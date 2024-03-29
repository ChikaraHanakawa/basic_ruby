# クラス
一種のデータ型。「オブジェクトの設計図」や「オブジェクトのひな形」と呼ばれたりする。クラスが同じであれば、保持しているデータ項目や使えるメソッドは同じ。  
# オブジェクト、インスタンス、レシーバー
クラスはあくまで設計図であり、設計図だけでは何も作れない。それと同じように、クラスはオブジェクトを作成できる。  
以下一例
```
#オブジェクトの作成
alice = User.new('Alice', 'Ruby', 20)
bob = User.new('Bob', 'Ruby', 30)

#full_nameというメソッドの呼び出し
alice.full_name
    => "Alice Ruby"

bob.full_name
    => "Bob Python"
```
クラスを基にして作られたデータの塊をオブジェクト又はインスタンスと呼ぶ。  
以下のコードでレシーバは`user`を指します。`first_name`メソッドのレシーバが`user`です。  
レシーバは、メソッドの呼び出している側という認識。
```
user = User.new('Alice', 'Ruby', 20)
user.first_name
```
# メソッド、メッセージ
オブジェクトが持つ動作の事をメソッドという。動かしたい処理に名前を付けて、何度でも利用できるようにしたのがメソッド。  
Pythonで言う所の関数みたいなもの。メッセージとは、レシーバの例を利用して説明すると`user`というレシーバに対して`first_name`というメッセージを送っていると言えます。  
予備知識としてだが、レシーバとメッセージという呼び方は`Small talk`というオブジェクト指向言語でよく使われていたそうで、`Ruby`もそれの影響を強く受けています。  
# 状態（ステート）
オブジェクト毎に保持されるデータ。  
# 属性（アトリビュート、プロパティ）
オブジェクトの状態（ステート）は外部から取得したり、変更したりできる場合がある。以下が、その例。  
```
class User
    #first_nameの読み書きを許可する
    attr_accessor :first_name
    #省略
end
user = User.name('Alice', 'Ruby', 20)
user.first_name#=> "Alice"
user.first_name = 'ありす'
user.first_name#=> "ありす"
```
オブジェクトから取得したり変更したりできる属性の事をアトリビュートやプロパティと呼ぶ。
# ゲッターとセッター
Rubyはインスタンス変数の値をクラス内でしか参照、変更が原則できない。なので、ゲッターというインスタンス変数を参照する専用のメソッドを定義する必要がある。  
また、セッターというインスタンス変数を変更する専用のメソッドがある。以下を例とする。  
```
class Person_name
    def initialize(name)
        @name = name
    end
    def getName#ゲッターメソッド
        @name
    end
    def changeName#セッターメソッド
        @name = name
    end
end
fater = Person_name.new('Tanaka')
fater.getName
    => "Tanaka"
fater.changeName = 'Suzuki'
    => "Suzuki"
```
