#Shifting a single character
def character_shifter (character, displacement)
    if character =~ /[A-Z]/
        base = 'A'.ord
    elsif character =~ /[a-z]/
        base = 'a'.ord
    else
        return 'Error! Enter string characters only'
    end
    
    ciphered_character = ((character.ord - base + displacement) %26)+ base
    ciphered_character.chr

end

#Shifting entire string
def string_cipher(input_string, displacement)
    cipher_string = ""

    input_string.each_char do |character|
        ciphered_character = character_shifter(character, displacement)
        cipher_string += ciphered_character
    end

    cipher_string
end

#Program
puts "Enter a string to be ciphered:"
input_string = gets.chomp

puts "Enter displacement:"
displacement = gets.chomp.to_i

ciphered_string = string_cipher(input_string, displacement)
puts "Ciphered string: #{cipher_string}"