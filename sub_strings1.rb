def substrings(words, dictionary)
  words_array = words.downcase.gsub(/\p{P}/, " ").split
  result = Hash.new(0)
  words_array.map do |word|
    if dictionary.include?(word)
      result[word] += 1
    end
  end
  puts result
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)