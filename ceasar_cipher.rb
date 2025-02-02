def caesar_cipher(string, offset)
  alpha_low = ('a'..'z').to_a
  alpha_high = ('A'..'Z').to_a
  string.chars.map do |char|
    if alpha_low.include?(char)
      new_index = (alpha_low.index(char) + offset) % 26
      alpha_low[new_index]
    elsif alpha_high.include?(char)
      new_index = (alpha_high.index(char) + offset) % 26
      alpha_high[new_index]
    else
      char
    end
  end.join
end

puts caesar_cipher("What a string!", 5)