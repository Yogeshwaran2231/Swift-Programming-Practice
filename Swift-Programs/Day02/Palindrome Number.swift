
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    var num = number
    var reversed = 0

    while num > 0 {
        let digit = num % 10
        reversed = reversed * 10 + digit
        num = num / 10
    }

    if number >= 0 && number == reversed {
        print("\(number) is a Palindrome Number")
    } else {
        print("\(number) is not a Palindrome Number")
    }

} else {
    print("Invalid input")
}
