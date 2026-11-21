
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    var num = abs(number)
    var count = 0

    if num == 0 {
        count = 1
    } else {
        while num > 0 {
            count += 1
            num /= 10
        }
    }

    print("Total number of digits = \(count)")

} else {
    print("Invalid input")
}
