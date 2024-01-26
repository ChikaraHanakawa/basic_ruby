#=>がなくてもハッシュを作成できる
country_bread = {japan:'japan', france:'french bread', england:'british bread', italy:'focaccia'}
puts country_bread[:japan]#=> "japan"

#キーと値のどちらもシンボルの場合
{japan: :yen, us: :dollar, india: :rupee}#{:japan=>:yen, :us=>:dollar, :india=>:rupee}も同じ

person = {
    name: 'Nobita',
    age: 10,
    skill: ['sleep', 'shoot'],
    family: {father: 'nobisuke',mother: 'tamako'}
}

puts "name:#{person[:name]}\nage:#{person[:age]}\nskill:#{person[:skill]}\nfamily:#{person[:family][:mother]}"

def template(a, b, c)
    nums = {x: 2, y: 4, z: 6}
    #何かしらの処理
end

#key method
puts country_bread.keys#=> [:japan, :france, :england, :italy]

#values method
puts country_bread.values#=> ["japan", "french bread", "british bread", "focaccia"]

#has_key?/key?/include?/member? method
puts country_bread.has_key?(:japan)#=> true
puts country_bread.has_key?(:india)#=> false

#**でハッシュを展開
music_genre = {a:'Pop', b:'R&B', c:'EDM', d:'Rock', e:'Jazz', f:'Hip Hop', g:'Funk', h:'New Age'}
{i:'Folk Song', **music_genre}#{:a=>"Pop", :b=>"R&B", :c=>"EDM", :d=>"Rock", :e=>"Jazz", :f=>"Hip Hop", :g=>"Funk", :h=>"New Age"}
=begin
↑ は**を付けないと構文エラー
    => extra_hash.rb:34: syntax error, unexpected '}', expecting =>
merge methodでも同じ結果が得られる↓
{i:'Folk Song'}.merge(music_genre)
=end

#任意のキーワードを受け入れる
def buy_burger(menu, drink: true, potato: true, **others)
    #省略
    puts others
end

#第一引数がハッシュの場合、関数の()は省略出来ない

#
