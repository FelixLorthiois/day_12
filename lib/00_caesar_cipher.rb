def letter_encrypter(char,key)
=begin
  if (key.is_a? Integer) && (letter.is_a? String) then
    if letter.upcase == letter
      letter_code = ((letter.ord - 65 + key%26)%26+65).chr
    else
      letter_code = ((letter.ord - 97 + key%26)%26+97).chr
    end
  else return "Error : wrong type of argument"
  end
  return letter_code
=end

  if (key.is_a? Integer) && (char.is_a? String) then
    if char.match?(/[A-Z]/)
      char_code = ((char.ord - 65 + key%26)%26 + 65).chr
    elsif char.match?(/[a-z]/)
      char_code = ((char.ord - 97 + key%26)%26 + 97).chr
    else
      return char
    end
  else
    return "Error : wrong type of argument"
  end
end

def caesar_cipher(string,key)
  string.chars.map.each{|letter| letter_encrypter(letter,key)}.join
end