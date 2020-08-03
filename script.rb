def caesar_cipher(string, shift)
  alphabet  = Array('a'..'z')
  non_caps  = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  alphabet = Array('A'..'Z')
  caps = Hash[alphabet.zip(alphabet.rotate(shift))]
  
  encrypter = non_caps.merge(caps)
  
  string.chars.map { |c| encrypter.fetch(c, c) }
end

puts 'Enter your message'
msg = gets.chomp

puts 'Enter your key'
key = gets.chomp.to_i

p caesar_cipher(msg, key).join