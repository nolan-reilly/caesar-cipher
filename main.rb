def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  capitalized_alphabet = alphabet.map { |element| element.upcase }
  shift_num = shift % 26

  cipher = [] # Store the ciphered array here

  # Loop through all the elements in the string
  string.chars.each do |c|
    # Find out if the current character is in the alphabet and capitalized
    is_capitalized = capitalized_alphabet.include?(c) || false

    # Shift characters based on shift_num and capitalize if it needs to be
    if alphabet.include?(c)
      index = alphabet.index(c)

      cipher.push(alphabet[(index + shift_num) % 26])
    elsif is_capitalized && capitalized_alphabet.include?(c)
      index = capitalized_alphabet.index(c)

      cipher.push(capitalized_alphabet[(index + shift_num) % 26])
    else
      cipher.push(c)
    end
  end

  cipher.join
end
