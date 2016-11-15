require "roman_numerals"

describe "roman numerals" do
  it "should output a number when give a number" do
    expect(output_number(3)).to eq 3
  end
  it "contains a hash containing the numerals and their values" do
    expect(numerals_hash).to be_a(Hash)
  end
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
    expect(hundreds_array).to eq  ["C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM", "M"]
  end
  it "should contain an array with the firt numerals" do
    expect(ones_array).to eq ["I", "II", "III", "IV", "V", "VI", "VII", "VIII", "XV", "X"]
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
end
