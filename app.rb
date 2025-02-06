require "./caesarcipher"
require "./substring"
require "./stockpicker"
require "./bubblesort"


def randomArray()
    random = Random.new
    newRandArr = []
    for i in 0..5
        newRandArr.append(random.rand(100))
    end
    return newRandArr
end


def main()
    puts "Welcome to my application!\n"
    while true
        puts "Please select your tool(Please enter a number): \n"
        puts "   1. Casesar Cipher\n   2. Substrings\n   3. Stock picker\n   4. Bubble Sort\n   5. Exit\n"
        userChoice = gets.chomp
        if userChoice == "1"
            puts "Enter the shift for your cipher: "
            shift = gets.chomp
            puts "Enter your message: "
            message = gets.chomp
            puts "Encrypted Message: "
            caesarCipher(Integer(shift), message)   
            puts "\n"  
        elsif userChoice == "2"
            puts "Enter word(s) to find: "
            words = gets.chomp
            substrings(words)
            puts "\n"  
        elsif userChoice == "3"
            stock_picker(randomArray())
            puts "\n"  
        elsif userChoice == "4"
            bubble_sort(randomArray())
            puts "\n"  
        elsif userChoice == "5"
            return
        else
            next
        end
    end
end
    
    # puts "hai world"

main()