#ガード式
data = [[1, 2, 3][4, 6, 5]]
data.each do {numbers}
    case numbers
    in [a, b, c] if b == a + 1 && c == b + 1
        puts "matched: #{numbers}"
    else
        puts "not matched: #{numbers}"
    end
end

#1行パターンマッチ
[1, 2, 3] in [Integer, Integer, Integer]#=> true
[1, 2, 'a'] in [Integer, Integer, Integer]#=> false
