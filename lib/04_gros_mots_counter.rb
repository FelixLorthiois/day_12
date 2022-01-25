require_relative '02_word_counter'

# setting dictionnary
dico_file = File.open("lib/gros_mots.txt")
dictionnary = dico_file.read.split("\n")
dico_file.close

# loading the corpus of Shakespeare
file = File.open("lib/shakespeare.txt")
corpus = file.read
file.close

# counts occurencies in the dictionnary
hash = word_counter(corpus, dictionnary)
puts hash