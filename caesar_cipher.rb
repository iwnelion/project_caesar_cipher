# Caesar Cipher
# takes in a string and the shift factor and then outputs the modified strong using the right shift
def caesar_cipher(string, shift)
  # puts "#{string} #{shift}"
  result=""
  alphabet_lower=('a'..'z').to_a
  alphabet_upper=('A'..'Z').to_a

  string.each_char do |char|
    if alphabet_lower.include?(char)
      new_ind=(alphabet_lower.index(char)+shift)%26
      result+=alphabet_lower[new_ind]
    elsif alphabet_upper.include?(char)
      new_ind=(alphabet_upper.index(char)+shift)%26
      result+=alphabet_upper[new_ind]
    else
      result+=char
    end
  end
  puts result
end
caesar_cipher("What a string!",5)   # "Bmfy f xywnsl!"
