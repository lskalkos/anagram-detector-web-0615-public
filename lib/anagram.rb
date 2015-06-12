# Your code goes here!
require 'pry'

class Anagram
  
  def initialize(word)
    @word = word
  end

  def match(words)

    word_letters = @word.split("")
    matches = words.collect do |string|
      match_letters = string.split("")
      match = true

      if match_letters.length == word_letters.length && match_letters.uniq.length == word_letters.uniq.length 
        match_letters.each do |letter|
          unless word_letters.include?(letter)
            match = false 
          end
        end
      else
        match = false
      end

      string if match

    end

    matches.compact

  end#end method

end





