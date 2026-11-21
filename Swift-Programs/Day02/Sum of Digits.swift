
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    var num = abs(number)
    var sum = 0

    while num > 0 {
        let digit = num % 10
        sum += digit
        num /= 10
    }

    print("Sum of digits = \(sum)")

} else {
    print("Invalid input")
}
