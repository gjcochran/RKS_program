# given a string, return the character after every letter "r"
# 
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
  string.scan(/[rR]+./).map { |s| s[1..-1] }.join
end


p pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"

p pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
