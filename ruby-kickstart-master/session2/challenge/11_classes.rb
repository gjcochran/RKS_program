# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example =>
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method 
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
  def initialize(bottles)
    if bottles > 99
      @bottles = 99
    elsif bottles < 0
      @bottles = 0
    else
      @bottles = bottles
    end
  end

  def num_to_string(int)
    singles = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three", 4 => "four", 5 => "five", 6 => "six", 7 => "seven", 8 => "eight", 9 => "nine"}
    tens = { 10 => "ten", 11 => "eleven", 12 => "twelve", 13 => "thirteen", 14 => "forteen", 15 => "fifteen", 16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"}
    doubles = {2 => "twenty", 3 => "thirty", 4 => "forty", 5 => "fifty", 6 => "sixty", 7 => "seventy", 8 => "eighty", 9 => "ninety"}
    
    if tens.keys.include?(int)
      tens[int].capitalize
    elsif int.to_s.size == 1
      singles[int].capitalize
    else
      dub, sing = int.to_s.chars
      dub = doubles[dub.to_i]
      sing = singles[sing.to_i]
      sing == 'zero' ? "#{dub.capitalize}" : "#{dub.capitalize}-#{sing}"
    end
  end

  def print_song
    if @bottles > 0
      @bottles.downto(1) do |i|
        num = num_to_string(i) 
        next_num = num_to_string(i-1)

         i > 1 ? (puts "#{num} bottles of beer on the wall,") : (puts "#{num} bottle of beer on the wall,")
         i > 1 ? (puts "#{num} bottles of beer,") : (puts "#{num} bottle of beer,")
         puts "Take one down, pass it around,"
         i - 1 != 1 ? (puts "#{next_num} bottles of beer on the wall.") : (puts "#{next_num} bottle of beer on the wall.")
      end
    else
      ''
    end
  end
end

test = BeerSong.new(99)
test.print_song
