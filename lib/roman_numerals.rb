def output_number(number)
  number
end

def numerals_hash
  hash = { I: 1,
        V: 5,
        X: 10,
        L: 50,
        C: 100,
        D: 500,
        M: 1000}
end

def thousands(number)
  number/1000
end

def hundreds(number)
  number/100
end

def tens(number)
  number/10
end

def tens_array
  ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
end

def hundreds_array
  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM", "M"]
end

def ones_array
  ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "XV", "X"]
end

def one_numerals(number)
  ones_array[number-1]
end

def ten_numerals(number)
  tens_array[index(number)-1]
end

def hundred_numerals(number)
  hundreds_array[index(number)-1]
end

def thousand_numerals(number)
  "M" * index(number)
end

def index(number)
  if number >=1000
    number / 1000
  elsif number >=100
    number / 100
  else
    number / 10
  end
end
