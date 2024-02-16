#singleton method
alice = 'I am Alice.'
bob = 'I am Bob.'

def alice.shuffle
    chars.shuffle.join
end
alice.shuffle
#bob.shuffle    ここでエラー
=begin
ただし、数値やシンボルなどの特異メソッドで定義できないオブジェクトが存在する
=end

#class methodをクラス構文の外で定義する
class Tekitou
end
#その1
def Tekitou.tekisita
    'Hello.'
end
#その2
def << Tekitou
    def ataru
        'Hi.'
    end
end
