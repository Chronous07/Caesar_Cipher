def caesar_cipher(phrase, shift_value)
  phrase_array = phrase.split("")
  cipher_array = []
  puts cipher_array
  phrase_array.each do |letter|
    letter_codepoint = ((letter.gsub(/[A-Za-z]/) {|m| m.ord}).to_i)
    if letter_codepoint == 0
      cipher_array.push(letter)
      next
    end

    if bounds_check(letter_codepoint, shift_value)
      letter_codepoint = letter_codepoint + shift_value - 26
    else
      letter_codepoint = letter_codepoint + shift_value
    end

    cipher_array.push(letter_codepoint.chr)

  end
  cipher_array.join("")
end

def bounds_check(codepoint, shift_value)
  if codepoint + shift_value > 122
    true;
  elsif codepoint < 97 && (codepoint + shift_value) > 90
    true
  else
    false
  end
end

value = "Hello, WorldZ!"
puts(value)
puts(caesar_cipher(value, 25))
value = "A second test| *&^&*()"
puts(value)
puts(caesar_cipher(value, 12))
