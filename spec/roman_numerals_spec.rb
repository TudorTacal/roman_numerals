require "roman_numerals"

describe "roman numerals" do
  it "should return the thousands" do
    expect(thousands(5000)).to eq 5
  end
  it "should return the hundreds" do
    expect(hundreds(500)).to eq 5
  end
  it "should return the tens" do
    expect(tens(50)).to eq 5
  end
  it "should contain an array with tens" do
    expect(tens_array).to eq ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
  end
  it "should contain an array with hundreds" do
    expect(hundreds_array).to eq  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
  end
  it "should contain an array with the firt numerals" do
    expect(ones_array).to eq ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
  end
  context "has an index method that" do
    it "returns the number of tens" do
      expect(index(20)).to eq 2
    end
    it "return the number of hundreds" do
      expect(index(200)).to eq 2
    end
    it "return the number of thousands" do
      expect(index(2000)).to eq 2
    end
  end

  context "when given a number" do
    it "1 should return I" do
      expect(one_numerals(1)).to eq "I"
    end
    it "10 should return X" do
      expect(ten_numerals(10)).to eq "X"
    end
    it "100 should return C" do
      expect(hundred_numerals(100)).to eq "C"
    end
    it "2000 should return MM" do
      expect(thousand_numerals(2000)).to eq "MM"
    end
  end

  context "transforms a number" do
    it "2000 should return MMC" do
      expect(roman_numerals(2100)).to eq "MMC"
    end
    it "2110 should return MMCX" do
      expect(roman_numerals(2110)).to eq "MMCX"
    end
    it "2111 should return MMCXI" do
      expect(roman_numerals(2111)).to eq "MMCXI"
    end
    it "999 should return CMXCIX" do
      expect(roman_numerals(999)).to eq "CMXCIX"
    end
  end
  context "it return the remainder of a number" do
    it "when number is bigger than 1000" do
      expect(remainder_thousands(2200)).to eq 200
    end
    it "when number is between 100..1000" do
      expect(remainder_hundreds(220)).to eq 20
    end
    it "when number is between 10..100" do
      expect(remainder(22)).to eq 2
    end
  end
end
