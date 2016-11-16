require "roman_numerals"
#
describe "roman numerals" do

  describe "has separate arrays with" do
    it "tens" do
      expect(tens_array).to eq ['X', "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"]
    end
    it "hundreds" do
      expect(hundreds_array).to eq  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"]
    end
    it "the first numerals" do
      expect(ones_array).to eq ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"]
    end
  end

  describe "has an index method that returns" do
    it "the number of tens" do
      expect(index(20)).to eq 2
    end
    it "the number of hundreds" do
      expect(index(200)).to eq 2
    end
    it "the number of thousands" do
      expect(index(2000)).to eq 2
    end
  end

  describe "it returns the remainder of a number" do
    it "when number is bigger than 1000" do
      expect(remainder(2200)).to eq 200
    end
    it "when number is between 100..1000" do
      expect(remainder(220)).to eq 20
    end
    it "when number is between 10..100" do
      expect(remainder(22)).to eq 2
    end
  end

  describe "when given the number:" do
    it "1 it returns I" do
      expect(one_numerals(1)).to eq "I"
    end
    it "10 it returns X" do
      expect(ten_numerals(10)).to eq "X"
    end
    it "100 it returns C" do
      expect(hundred_numerals(100)).to eq "C"
    end
    it "2000 it returns MM" do
      expect(thousand_numerals(2000)).to eq "MM"
    end
  end

  describe "transforms any number into a roman numerals" do
    it "2100 should return MMC" do
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
    it "5555 should return MMMMMDLV" do
      expect(roman_numerals(5555)).to eq "MMMMMDLV"
    end
    it "0 should return ''" do
      expect(roman_numerals(0)).to eq ""
    end
  end
end
