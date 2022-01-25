require_relative '02_word_counter'

# setting dictionnary
dictionnary = ["the", "of", "and", "to", "a", "in", "for", "is", "on", "that", "by", "this", "with", "i", "you", "it", "not", "or", "be", "are"]

# loading the corpus of Shakespeare
file = File.open("lib/shakespeare.txt")
corpus = file.read
file.close

# counts occurencies in the dictionnary
hash = word_counter(corpus, dictionnary)
puts hash

