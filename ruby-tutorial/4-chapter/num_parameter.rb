#番号指定パラメータ
['1', '20', '300'].map {|s| s.rjust(3, '0')}#なし
['1', '20', '300'].map {_1.rjust(3,'0')}#使用
#=> ["001", "020", "300"]
['japan', 'us', 'italy'].map.with_index {|country, n| [n, country]}
['japan', 'us', 'italy'].map.with_index {[_2, _1]}
#=> [[0, "japan"], [1, "us"], [2, "italy"]]

dimensions = [[10, 20], [30, 40], [50, 60],]
dimensions.each{p _1}#dimensions.each {|dimensions| p dimension}と同じ

dimensions.each{puts "#{_1} / #{_2}"}#dimensions.each {|length, width| puts "#{length} / #{width}"}と同じ
#=> 10 / 20, 30 / 40, 50 / 60
=begin
エラー:ブロックが入れ子になっている場合、番号指定パラメータが2つ以上のブロックで使われている場合
sum = 0
[[1, 2, 3], [4, 5, 6]].each do
    _1.each do
        #内側のブロックでも番号指定パラメータを使うとエラー
        sum += _1
    end
end
=end

#番号指定パラメータが使われているブロックが1つだけであれば大丈夫
sum = 0
[[1, 2, 3], [4, 5, 6]].each do |n|
    n.each do
        sum += _1
    end
end
=begin
エラー:通常のブロックパラメータと番号指定パラメータを混合させる場合
['1', '20', '300'].map {|s| _1.rjust(3, '0')}
    => SyntaxError ((irb):1: ordinary parameter is defined)
=end

#{}とdo...end
#do...end version
a = [1, 2, 3]
a.delete(100)#=> nil
a.delete 100 do
    'NG'
end#=> 'NG'
#{} version
=begin
a.delete 100 {'NG'}
    => syntax error, unexpected '{', expecting end-of-input
引数括弧なしだと{}だとエラー。do..endは大丈夫。
=end
