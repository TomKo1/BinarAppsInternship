# for plurazlie
require 'rubygems'
require 'active_support/inflector'

puts 'Plese enter number of song loops:'
# java trim()
a = gets.chomp.to_i

def humanize(number)
    ones_place = { 
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four', 
        5 => 'five' 
    }
    return ones_place[number]
end

for i in 1..a 

    99.downto(2) do |n|
        print " #{n} #{'bottle'.pluralize(n)} of beer on the wall, #{n} #{'bottle'.pluralize(n)} of beer. \n \
        Take one down and pass it around, #{n-1} #{'bottle'.pluralize(n-1)} of beer on the wall.\n\n" if n > 5 ;            

        print " #{humanize(n)} #{'bottle'.pluralize(n)} of beer on the wall, #{humanize(n)} #{'bottle'.pluralize(n)} of beer. \n \
        Take one down and pass it around, #{humanize(n-1)} #{'bottle'.pluralize(n-1)} of beer on the wall.\n\n" if n <= 5 ;            
    end


    puts "1 bottle of beer on the wall, 1 bottle of beer."
    puts "  Take one down and pass it around, no more bottles of beer on the wall.\n\n"

    puts "No more bottles of beer on the wall, no more bottles of beer. "
    puts "  Go to the store and buy some more, 99 bottles of beer on the wall.\n\n"
end


