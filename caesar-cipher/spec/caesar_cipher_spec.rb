require './lib/caesar_cipher'

describe "Caesar Cipher" do 
  it "Shifts input by  a given factor" do
    expect(better_caesar("Test", 1)).to eql "Uftu"
  end

  it "wraps from z to a" do
    expect(better_caesar("zzz",1)).to eql "aaa"
  end

  it "keeps the case" do
    expect(better_caesar("A",1)).to eql "B"
    expect(better_caesar("a",1)).to eql "b"
  end

  it "doesnt shift non-letters characters" do
    expect(better_caesar("&!:#",1)).to eql "&!:#"
  end

  it "handles shifts > 26" do
    expect(better_caesar("Test",27)).to eql "Uftu"
  end

  it "handles negative shifts" do
    expect(better_caesar("Test",-1)).to eql "Sdrs"
  end

  it "handles shift of 0" do
    expect(better_caesar("Test",0)).to eql "Test"
  end
end