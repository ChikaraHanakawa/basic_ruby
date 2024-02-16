puts 'Start'
begin
  #例外が起きうる処理
  1 + '10'
 rescue
  #例外が発生した場合の処理
  puts '例外が発生したが、このまま続行'
 end
puts 'End.'
