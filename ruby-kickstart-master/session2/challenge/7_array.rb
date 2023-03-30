# Given a sentence, return an array containing every other word.
# Punctuation is not part of the word unless it is a contraction.
# In order to not have to write an actual language parser, there won't be any punctuation too complex.
# There will be no "'" that is not part of a contraction.
# Assume each of these  charactsrs are not to be considered: ! @ $ # % ^ & * ( ) - = _ + [ ] : ; , . / < > ? \ |
# 
# Examples
# alternate_words("Lorem ipsum dolor sit amet.")  # => ["Lorem", "dolor", "amet"]
# alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
# alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]

def alternate_words(sentence)
  no_punct = sentence.gsub(/[^a-zA-Z' ]/, '')  
#  no_punct.split.select.with_index { |_, i| i.even? }
end


p alternate_words("Can't we all get along?")      # => ["Can't", "all", "along"]
#p alternate_words("Elementary, my dear Watson!")  # => ["Elementary", "dear"]
p alternate_words "Would a dating service on the net be frowned upon . . . ? I hope not. But even if it is, don’t let that stop you from notifying me via net mail if you start one." # => ["Would", "dating", "on", "net", "frowned", "I", "not", "even", "it", "don’t", "that", "you", "notifying", "via", "mail", "you", "one"]
# so strange, fails rake tests because he gives a ’ and my keyboard reads single quotes only as ' ....

