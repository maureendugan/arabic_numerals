def arabic_numbers(rom_num)
  numerals = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000
  }

  exceptions = {
    "IV" => 2,
    "IX" => 2,
    "XL" => 20,
    "XC" => 20,
    "CD" => 200,
    "CM" => 200,
  }
  
  correction = 0
  exceptions.each do |combo, digit|
    if rom_num.index(combo) != nil
      correction = correction - digit
    end
  end

  result = 0
  rom_array = rom_num.split("")
  rom_array.each do |rom_numeral|
    numerals.each do |letter, digit|
      if letter == rom_numeral
        result = result + digit
      end
    end
  end
  result + correction
end
