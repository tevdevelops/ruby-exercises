def caesar_cipher(str, num)
  array_of_letters = str.split("")
  array_of_ord =[]

  array_of_letters.each { |chr|
    array_of_ord.push(chr.ord)
  }

  if num > 0
    num.times do
      array_of_ord.map! { |number|
        if number == 90
          65
        elsif number == 122
          97
        elsif number.between?(65,90) || number.between?(97,122)
          number + 1
        else
          number
        end
      }
    end
  elsif num < 0
    (num.abs).times do
      array_of_ord.map! { |number|
        if number == 65
          90
        elsif number == 97
          122
        elsif number.between?(65,90) || number.between?(97,122)
          number - 1
        else
          number
        end
      }
    end
  else
  end

  array_of_letters = []

  array_of_ord.each { |letter|
    array_of_letters.push(letter.chr)
  }

  puts array_of_letters.join
end

caesar_cipher("What a string!", 0)
caesar_cipher("What a string!", 5)
caesar_cipher("What a string!", -1)
