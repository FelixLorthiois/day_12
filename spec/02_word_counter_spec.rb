require_relative '../lib/02_word_counter'

dictionnary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

describe "sub_counter" do
  it "gives back number of occurences of each word of the dictionnary for a given word" do
    expect(sub_counter("below",dictionnary)).to eq({"below"=>1, "low"=>1})
  end
end

describe "merge_called_disco_words" do
  it "merges two hashes counting number of occurrences" do
    expect(merge_called_dico_words({"below" => 1 , "low" => 1},{"it" => 1 , "below" => 2})).to eq({"below" => 3 , "low" => 1 , "it" => 1})
  end
end

describe "word_counter" do
  it "counts number of occurences of each word of the dictionnary within a corpus" do
    expect(word_counter("Howdy partner, sit down! How's it going?",dictionnary)).to eq({"down"=>1, "how"=>2, "howdy"=>1,"go"=>1, "going"=>1, "it"=>2, "i"=> 3, "own"=>1,"part"=>1,"partner"=>1,"sit"=>1})
  end
end