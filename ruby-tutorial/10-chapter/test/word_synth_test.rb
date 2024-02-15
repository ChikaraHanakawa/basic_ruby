require 'minitest/autorun'
require_relative '../lib/word_synth'
require_relative '../lib/effects'

class WordSynthTest < Minitest::Test
    def test_play_with_many_effects
        synth = WordSynth.new
        synth.add_effects(Effects.echo(2))
        synth.add_effects(Effects.loud(3))
        synth.add_effects(Effects.reverse)
            assert_equal '!!!YYBBUURR !!!SSII !!!!!NNUUFF', synth.play('Ruby is fun!')
    end
end
