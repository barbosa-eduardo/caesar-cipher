def caesar_cipher(string, key)
    result = ""
    string.each_char do |char|
        base = char.ord < 97 ? 65 : 97
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            rotation = ((char.ord - base) + key).remainder(26)
            result << (base + rotation).chr
        else
            result << char
        end
    end
    result
end

p caesar_cipher("What a string!", 5) #=> "Bmfy f xywnsl!"
