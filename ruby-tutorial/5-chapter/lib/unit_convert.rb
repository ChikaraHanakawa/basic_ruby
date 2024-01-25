def convert_length(num, before_unit, after_unit)
    case before_unit
        when 'm'
            if after_unit == 'in'
                num = num * 39.37
                return num
            elsif after_unit == 'ft'
                num = num * 3.28
                return num
            end
        when 'ft'
            if after_unit == 'm'
                num = num / 3.28
                return num
            elsif after_unit == 'in'
                num = num * 12
                return num
            end
        when 'in'
            if after_unit == 'm'
                num = num / 39.37
                num = num.round(3)
                return num
            elsif after_unit == 'ft'
                num = num * 0.083333
                num = num.round(3)
                return num
            end
    end
end
