require 'minitest/autorun'

class SampleTest <Minitest::Test
    def test_sample
        assert_equal 'RUBY','ruby'.upcase
    end
end

=begin
#aがbと等しければパス
assert_equal b, a
#aが真であればパス
assert a
#aが偽であればパス
refute a
=end
