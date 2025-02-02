def substrings(words, dictionary)
  result = Hash.new(0)
  words.downcase!
  dictionary.each do |word|
    count = words.scan(word).length
    result[word] = count if count > 0
  end
  puts result
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)