require 'minitest/autorun'
require_relative 'gate'
require_relative 'ticket'

class GateTest < Minitest::Test
    def test_gate
        assert Gate.new
    end
end