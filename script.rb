# frozen_string_literal: true

dictionary = %w[below down go going horn how howdy it i low own part partner sit]

def substrings(sentence, dictionary)
  hash = {}

  dictionary.each do |check|
    count = 0
    sentence.split.each do |word|
      if word.downcase.include?(check)
        count += 1
        hash[check] = count
      end
    end
  end
  puts hash
end

substrings('below', dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)
