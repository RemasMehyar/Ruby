def bubbleSort (array)
    for i in 0...array.length
        for j in 0...array.length-1
            if array[j] > array[j+1]
                temp = array[j+1]
                array[j+1] = array[j]
                array[j]=temp
            end
        end
    end
            array
    end
        p bubbleSort([4,3,78,2,0,2])
        #def check_guess(codet, guess)
#  exactMatch = 0
#  almostMatch = 0
#  codet.each_with_index do |code_digit, index|
#    guess_digit = guess[index]
#    if code_digit == guess_digit
#      exactMatch += 1
#    elsif code.include?(guess_digit)
#      almostMatch += 1
#    end
#  end
#
#  [exactMatch, almostMatch]
#end
#
puts "ERROR" if check_guess("1234".chars, "3456".chars) != [2, 2]
puts "ERROR" if check_guess("4123", "5123") != [3, 0]
puts "ERROR" if check_guess("1234", "1234") != [4, 0]
puts "ERROR" if check_guess("5432", "1234") != [1, 2]
puts "ERROR" if check_guess("3212", "1232") != [2, 2]