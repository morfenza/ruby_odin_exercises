# frozen_string_literal: true

def caesar_cipher(string, key)
  # Transform the string into an array of String#ord
  ord_arr = string.split('').map do |chr|
    !chr.match(/[a-zA-Z]/).nil? ? chr.ord : chr
  end

  # Applies the rotation
  cipher_arr = ord_arr.map do |element|
    if element.is_a? String
      element
    elsif element.between?(97, 122)
      if element + key > 122
        aux = (element + key) - 122
        96 + aux
      else
        element + key
      end
    elsif element.between?(65, 90)
      if element + key > 90
        aux = (element + key) - 90
        64 + aux
      else
        element + key
      end
    end
  end

  # Transforms back into string
  cipher_arr.map(&:chr).join('')
end

caesar_cipher('What a string!', 5)
