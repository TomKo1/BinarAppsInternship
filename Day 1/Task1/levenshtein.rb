# jako input z cmd
# input_array = ARGV 

# if input_array.length < 2 
#     puts 'Too few arguments'
#     exit(1)
# end

# wyraz_1 = input_array[0]
# wyraz_2 = input_array[1]

array = []

# z pliku 

# TDDO: improve this code :) adn write recursive version
# line_counter = 0
# File.open("./data/data.txt",'r').each_line do |line|
#     array << line.gsub(/\s/, '')
#     line_counter += 1
# end

how_many_lines = File.open("./data/data.txt",'r').lines.count 
if how_many_lines  % 2 != 0 
    puts 'Wrong number of lines - number of lines should be divisible by 2'
    exit(1)
end

array = File.readlines('./data/data.txt')

for i in 0..(how_many_lines/2 - 1)
    wyraz_1 = array[i].gsub(/\s/, '')
    wyraz_2 = array[i+1].gsub(/\s/, '')

    # puts wyraz_1.inspect
    # puts wyraz_2.inspect

    puts wyraz_1
    puts wyraz_2

    def levensthein(first_word, second_word)
        # if letters are qual then 0 if not then 1 
        # potem minimum z 3 liczby po bokach
        first_length = first_word.length
        second_word_length = second_word.length
        matrix = Array.new

        # tablica tablic
        for i in 0..first_length
            matrix[i] = Array.new
        end

        # wypelniamy wiersze
        for i in 0..first_length
            matrix[i][0] = i
        end
        # wypelnij kolumyn
        for i in 0..second_word_length
            matrix[0][i] = i
        end

        for i in 1..first_length
            for j in 1..second_word_length
                # if they are equal 
                if first_word[i-1,1]  == second_word[j-1,1]
                    cost = 0
                else
                    cost = 1
                end
                # bezposrednio w lewo + 1
                x1 = ( matrix[i-1][j]+1 )
                # nad komorka +1 
                x2 = ( matrix[i][j-1]+1 ) 
                # wartosc lezaca bezposrednio w lwo-gore + koszt
                x3 = ( matrix[i-1][j-1]+cost ) 
                # wpisujemy minimum z tych liczb
                matrix[i][j] =   [x1, x2, x3].min

            end
        end
        # odpowiedzia jest wartosc z komorki [n+1,m+1]
        matrix[first_length][second_word_length]
    end

    puts levensthein(wyraz_1,wyraz_2)
end