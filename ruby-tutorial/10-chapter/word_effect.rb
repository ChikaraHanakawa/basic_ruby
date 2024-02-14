class WordSynth
  def initialize
    @effects = []
  end
  def add_effect(effect)
    @effects << effect
  end

  def play(original_words)
    words = orijinal_words
    @effects.each do |effect|
      words = effect.call(words)
    end
  words
  end
end
