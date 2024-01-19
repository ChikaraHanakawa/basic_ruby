def to_hex(r, g, b)
    if (0..255).include?(r && g && b)
        convert_Hexadecimal = '#'
        [r, g, b].each do |n|
            convert_Hexadecimal += n.to_s(16).rjust(2, '0')
        end
    end
    return convert_Hexadecimal
end

def to_ints(hexadecimal)
    sharp_hexadecimal = hexadecimal
    if (0x000000..0xffffff).include?(sharp_hexadecimal.delete('#').to_i(16))
        convert_Decimal = []
        [1, 3, 5].each do |s|
            even_num = s.odd? ? s + 1 : s
            convert_Decimal << hexadecimal[s..even_num].to_i(16)
        end
    end
    return convert_Decimal
end
