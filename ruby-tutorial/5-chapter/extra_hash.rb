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


