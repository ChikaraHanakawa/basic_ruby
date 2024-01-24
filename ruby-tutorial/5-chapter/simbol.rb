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
=end
drink = {:us=>'Budweiser', :italy=>'Barolo', :Germany=>'weizen'}
