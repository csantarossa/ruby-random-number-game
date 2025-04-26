def main()
    success = false
    while success != true
        input = getNum()
        randomNum = generateNum()
        success = checkNumbers(input, randomNum)
    end
    puts("You win!! 🎉")
end

def getNum()
    puts("Enter a number: ")
    input = gets().chomp().to_i
    return input
end

def generateNum()
    puts("Generating a random number...")
    randomNum = rand(1..3)
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