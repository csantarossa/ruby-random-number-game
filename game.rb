def main()
    lives = 5
    success = false
    while success != true
        if lives === 0
            puts("-------------------------\nGame Over 💣\n-------------------------")
            exit()
        else 
            puts("-------------------------\nYou have #{lives.to_s} lives left... ⏳")
            input = getNum()
            randomNum = generateNum()
            success = checkNumbers(input, randomNum)
            lives = lives - 1
        end
    end
    puts("-------------------------\nYou win!! 🎉\n-------------------------")
end

def getNum()
    puts("Enter a number: ")
    input = gets().chomp().to_i
    return input
end

def generateNum()
    puts("Generating a random number...")
    randomNum = rand(1..5)
    puts(randomNum)
    return randomNum
end

def checkNumbers(input, randomNum)
    if input === randomNum 
        puts("Same")
        return true
     else 
        puts("Try again")
     end
end

main()