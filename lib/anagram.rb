# Your code goes here!

require 'pry'

class Anagram

  attr_accessor :anagram

  def initialize(anagram)
    anagram_split = anagram.split("")
    @anagram = anagram_split
  end

  def match(possible_anagrams)
    confirmed_anagrams = []
    possible_anagrams.each do |word|
      split_word = word.split("")
      binding.pry
      sort_word = split_word.sort
      binding.pry
      if sort_word == @anagram
        confirmed_anagrams << word
        binding.pry
      end
    end
    confirmed_anagrams
  end
end
