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


  result = 0
  rom_array = rom_num.split("")
  rom_array = rom_array.reverse
  previous_digit = 1
  rom_array.each do |rom_numeral|
    numerals.each do |letter, digit|
      if letter == rom_numeral
        if previous_digit <= digit
          result = result + digit
        else
          result = result - digit
        end
        previous_digit = digit
      end
    end
  end
  result
end

puts arabic_numbers('II')
