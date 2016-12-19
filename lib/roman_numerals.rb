class RomanNumerals

  ROMAN_NUMERALS = {10 => "X", 5 => "V", 1 => "I"}

  def self.convert(number)
    ROMAN_NUMERALS[number]
  end

end
