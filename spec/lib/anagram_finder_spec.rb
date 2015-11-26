require 'spec_helper'
require 'anagram_finder'

describe AnagramFinder do

  subject(:anagram_finder) { AnagramFinder.new }

  describe '#anagrams' do

    context 'some words added' do

      before do
        anagram_finder.add_word 'cat'
        anagram_finder.add_word 'dog'
        anagram_finder.add_word 'tac'
      end

      it 'returns array of anagrams' do
        expect(anagram_finder.anagrams).to eq([['cat', 'tac']])
      end
    end

    context 'no words added' do

      it 'returns an empty array' do
        expect(anagram_finder.anagrams).to eq([])
      end

    end

  end

end
