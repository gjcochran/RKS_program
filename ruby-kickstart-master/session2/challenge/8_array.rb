# Given an array of elements, return true if any element shows up three times in a row
# 
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(arr)
  chunks = arr.each_cons(3).to_a
  selected = chunks.select { |c| c.uniq.size == 1 }
  selected.empty? ? false : true
end

p got_three? [1, 2, 2, 2, 3]  # => true
#p got_three? ['a', 'a', 'b']  # => false
p got_three? [1,2,5,9,3,5,5,5,10,4,3,2]
#p got_three? [1, 2, 1, 1]
p got_three? [1,21,15,17,9,19,17,24,25,4,10,3,23,5,21,13,16,12,14,15,3,20,3,22,7,20,7,11,15,10,6,24,2,2,19,5,4,21,6,17,1,6,16,4,22,25,18,18,20,11,8,9,2,16,19,13,7,10,23,25,11,8,24,18,5,14,14,8,22,23,1,9,12,12,13]
