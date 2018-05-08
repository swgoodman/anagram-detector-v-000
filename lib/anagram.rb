# Your code goes here!

require 'pry'

class Anagram

  attr_accessor :anagram

  def initialize(anagram)
    anagram_split = anagram.split("")
    #binding.pry
    @anagram = anagram_split
  end

  def match(possible_anagrams)
    confirmed_anagrams = []
    possible_anagrams.detect do |word|
      split_word = word.split("")
      sort_word = split_word.sort
      binding.pry
      if possible_anagrams.detect == @anagram
        confirmed_anagrams << word
        binding.pry
      end
    end
    confirmed_anagrams
  end
end
