#シンボルの作成
:drink
'drink'
=begin
シンボルは整数と同じ扱い。だから、2つの値が同じかを調べるのがstringよりも速い
メモリの使用効率が良い
シンボルはイミュータブル(変更負荷)
symbol = :apple
symbol.upcase!
    => NoMethodError (undefined method `upcase!' for :apple:Symbol)

以下のようにシンボルを作るとエラー
:12345
    => SyntaxError
:ruby-is-fun
    => NameError
:ruby is fun
    => SyntaxError
:()
    => SyntaxError
↑ の場合、''シングルクオートで囲めば有効
=end
drink = {:us=>'Budweiser', :italy=>'Barolo', :Germany=>'weizen'}

#%記法
%s!ruby is fun!#=> :"ruby is fun"
%s(ruby is fun)#=> :"ruby is fun"
%i(apple orange melon)#=> "[:apple, :orange, :melon]"

#to_sym/intern and to_s/id2name method
string = 'apple'
symbol = :apple
string.to_sym#=> :apple
string.to_sym == symbol#=> true
symbol.to_s#=> "apple"
string == symbol.to_s#=> true
string + symbol.to_s#=> "appleapple"
#respond_to? methodは文字列とシンボルを同等に扱う。
'apple'.respond_to?('include?')#=> true
'apple'.respond_to?(:include)#=> true
'apple'.respond_to?('foo_bar')#=> false
'apple'.respond_to?(:foo_bar)#=> false
#文字列に'pp'が含まれるか調査
'apple'.include?('pp')#=> ture
=begin
シンボルを引数で渡すとエラー
'apple'.include?(:pp)
    => no implicit conversion of Symbol into String (TypeError)
=end
