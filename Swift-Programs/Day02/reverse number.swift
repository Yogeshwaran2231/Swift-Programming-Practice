
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    var num = abs(number)
    var reversed = 0

    while num > 0 {
        let digit = num % 10
        reversed = reversed * 10 + digit
        num = num / 10
    }

    if number < 0 {
        reversed = -reversed
    }

    print("Original Number: \(number)")
    print("Reversed Number: \(reversed)")

} else {
    print("Invalid input")
}
