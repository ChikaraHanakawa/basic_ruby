class WordSynth
  def initialize
    @effects = []
  end
  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    words = original_words
    @effects.each do |effect|
      words = effect.call(words)
    end
  words
  end
  def test_play_with_reverse
    synth = WordSynth.new
    synth.add_effect(Effects.reverse)
    assert_equal 'ybuR si !nuf', synth.play('Ruby is fun!')
  end
end
