require 'minitest/autorun'
require_relative '../lib/unit_convert.rb'

class UnitTest<Minitest::Test
    def test_m
        assert_equal 3.28, convert_length(1, 'm', 'ft')
        assert_equal 39.37, convert_length(1, 'm', 'in')
    end
    def test_ft
        assert_equal 0.9146341463414634, convert_length(3, 'ft', 'm')
        assert_equal 6, convert_length(0.5, 'ft', 'in')
    end
    def test_in
        assert_equal 0.025, convert_length(1, 'in', 'm')
        assert_equal 0.167, convert_length(2, 'in', 'ft')
    end
end
