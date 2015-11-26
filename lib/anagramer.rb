#!/usr/bin/env ruby

require_relative 'anagram_finder'

unless ARGV.length == 1
  STDERR.puts "Expected: 1 arg which is the filename of words"
  exit 1
end

filename = ARGV[0]

anagram_finder = AnagramFinder.new

File.foreach(filename) do |line|
  anagram_finder.add_word line.strip
end

anagrams = anagram_finder.anagrams
anagrams.each do |words|
  puts words.join(' ')
end
