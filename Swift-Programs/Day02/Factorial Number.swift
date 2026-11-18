
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    if number < 0 {
        print("Factorial is not defined for negative numbers")
    } else {

        var factorial = 1

        for i in 1...max(number, 1) {
            factorial *= i
        }

        print("Factorial of \(number) is \(factorial)")
    }

} else {
    print("Invalid input")
}
