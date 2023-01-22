# frozen_string_literal: true

def substrings(string, dictionary)
  aux = string.downcase
  dictionary.each_with_object(Hash.new(0)) do |word, hash|
    hash[word] += aux.scan(word).size unless aux.scan(word).empty?
  end
end

# Examples
dictionary = %w[below down go going horn how howdy it i low own part partner sit]
string = "Howdy partner, sit down! How's it going?"

puts substrings(string, dictionary)
