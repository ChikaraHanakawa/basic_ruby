#name spaceで同名クラスの定義衝突を避ける
module Baseball
    class Second
        def initialize(player, uniform_number)
            @player = player
            @uniform_number = uniform_number
        end
    end
end
module Clock
    class Second
        def initialize(digits)
            @digits = digits
        end
    end
end
Baseball::Second.new('Alece', 13)
Clock::Second.new(13)
#入れ子なしでクラスを定義
class Baseball::First
    def initialize(player, uniform_number)
        @player = player
        @uniform_number = uniform_number
    end
end

#top levelの同名クラスを参照
class Third
    def initialize(player, uniform_number)
        @player = player
        @uniform_number = uniform_number
    end
end
module AM
    class Third
        def initialize(digits)
            @digits = digits
            @baseball_second = ::Third.new('Bob', 47)
        end
    end
end
AM::Third.new(8)
