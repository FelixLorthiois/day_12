require_relative '../lib/00_caesar_cipher'

describe "letter_encrypter" do
  it "entcrypts a upcase letter for a positive key" do
    expect(letter_encrypter("A",3)).to eq("D")
  end

  it "entcrypts a downcase letter for a positive key" do
    expect(letter_encrypter("g",5)).to eq("l")
  end

  it "goes back correctly to A when reching more than Z" do
    expect(letter_encrypter("Y",3)).to eq("B")
  end

  it "deals with negative key" do
    expect(letter_encrypter("f",-3)).to eq("c")
  end

  it "does not change non-letter charaacters" do
    expect(letter_encrypter("! ?%",-3)).to eq("! ?%")
  end

  it "goes back correctly to Z when reaching less than A" do
    expect(letter_encrypter("A",-3)).to eq("X")
  end

  it "sends a error when first input is not a string" do
    expect(letter_encrypter(7,-3)).to eq("Error : wrong type of argument")
  end

  it "sends a error when second input is not an integer" do
    expect(letter_encrypter("K",2.0)).to eq("Error : wrong type of argument")
  end
end

describe "caesar_cipher" do
  it "entcrypts a word for a positive key" do
    expect(caesar_cipher("hello",3)).to eq("khoor")
  end

  it "entcrypts several words respecting the case" do
    expect(caesar_cipher("What a string!",5)).to eq("Bmfy f xywnsl!")
  end
end