class AnagramFinder

  def initialize
    @store = Hash.new { |h, k| h[k] = [] }
  end

  def add_word(word)
    @store[checksum(word)] << word
  end

  def anagrams
    @store.select {|checksum, words| words.length > 1 }.values
  end

  private

  def checksum(word)
    word.chars.sort.join.hash
  end

end
