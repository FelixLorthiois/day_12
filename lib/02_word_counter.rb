# return a hash for number of occurences in the dictionnary within a given word
def sub_counter(word,dictionnary)
  called_dico_words = {}
  dictionnary.each do |dico_word|
    if word.downcase.include? dico_word
      called_dico_words[dico_word]=1
    end
  end
  return called_dico_words
end

# merge to hashes by adding their values
def merge_called_dico_words(hash1,hash2)
  hash1.merge(hash2){|key, h1val, h2val| h1val + h2val}
end

# counts number of occurences in the dictionnary within a corpus
def word_counter(corpus,dictionnary)
  hash_counter = {}
  hash_counter_to_add = {}
  corpus.split.each do |word|
    hash_counter_to_add = sub_counter(word,dictionnary)
    hash_counter = merge_called_dico_words(hash_counter,hash_counter_to_add)
  end
  return hash_counter.sort.to_h
end