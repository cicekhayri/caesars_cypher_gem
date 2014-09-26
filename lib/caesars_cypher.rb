class CaesarsCypher
 
  def self.cipher
    {'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
     'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
     'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
     'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
     'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
     'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
     'y' => 'l', 'z' => 'm'}  
  end

  def self.words_downcase(letter)
    downcase_letter = letter.downcase
    self.cipher[downcase_letter]
  end

  def self.encrypt(letters)
    letter_split = letters.split('') 
    result = []

    letter_split.each do |word|
      encrypted = self.words_downcase(word)
      result.push(encrypted)
    end
    result.join('')
  end

  def self.decrypt(letters)
    self.encrypt(letters)
  end
end
