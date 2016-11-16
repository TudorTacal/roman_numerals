
def tens_array
  ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
end

def hundreds_array
  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
end

def ones_array
  ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
end

def one_numerals(number)
  return "" if number ==0
  ones_array[number-1]
end

def ten_numerals(number)
  return "" if number ==0
  tens_array[index(number)-1]
end

def hundred_numerals(number)
  return "" if number ==0
  hundreds_array[index(number)-1]
end

def thousand_numerals(number)
  return "" if number ==0
  "M" * index(number)
end

def index(number)
  return number / 1000 if number >= 1000
  return number / 100 if number >= 100
  return number / 10 if number >= 10
end

def remainder_thousands(number)
  number%1000
end

def remainder_hundreds(number)
  number%100
end

def remainder_tens(number)
  number%10
end

def remainder(number)
  return number%1000 if number > 1000
  return number%100 if number > 100
  return number%10 if number > 10
end


def roman_numerals(number)
  return thousand_numerals(number) + hundred_numerals(remainder_thousands(number)) + ten_numerals(remainder_hundreds(number)) + one_numerals(remainder_tens(number)) if number >= 1000
  return hundred_numerals(number) + ten_numerals(remainder_hundreds(number)) + one_numerals(remainder_tens(number)) if number >=100
  return ten_numerals(number) + one_numerals(remainder_tens(number)) if number >= 10
  one_numerals(number)
end
