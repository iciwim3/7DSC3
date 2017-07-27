//: 7 Days of Swift Challenges - Day 3 - Loops

import UIKit

/* 
 1. Create a new playground for this code challenge called 
 7DSC-Day3-MinMaxFinder
 2. In Swift, you can create a random number by using arc4random()
 3. And if you want to have the random number is within the range 
 of 0 to 1000, you can do arc4random() % 1000.
 4. Why do we use % modulus operator here? Modulus means you find 
 the remainder of a division. If you 10%3, you get 1.
 5. In other words, the remainder of a division is always from 
 0 to the divisor - 1.
 6. Knowing this trick, we can now create any random number in 
 any range we want.
 7. Let's create an empty array of Int named numbers.
 8. Use a for loop so you can add 1000 random numbers that are 
 always less than 1,000,000 to the array.
 9. Now, can you find me the minimum number in the array of 
 random numbers. 
        RULE: do not use any other Swift function like min, max 
        to find the number. You have to use a for loop here! And 
        do not use any other functions to sort the array. You have 
        to use for loop! Otherwise there is no point of practicing 
        loop :( This is in red so you know that I'm seriously serious here! 😈
 10. Next, can you help me find the maximum number from the array? 
 */

var numbers = [Int]()

for i in 0..<1000 {
    let randomNumber = Int(arc4random()) % 1000000
    numbers.append(randomNumber)
    
}
numbers

var total = 0

for i in 0..<numbers.count {
    total += numbers[i]
}

total

let averageOfNumbers: Double = Double(total) / Double(numbers.count)

var min = Int.max

for i in 0..<numbers.count {
    let currentNumber = numbers[i]
    
    if currentNumber < min {
        min = currentNumber
    }
}

min

var max = Int.min

for i in 0..<numbers.count {
    let currentNumber = numbers[i]
    
    if currentNumber > max {
        max = currentNumber
    }
}

max


