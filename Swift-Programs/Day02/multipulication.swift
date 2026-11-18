
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    print("Multiplication Table of \(number)")

    for i in 1...10 {
        print("\(number) x \(i) = \(number * i)")
    }

} else {
    print("Invalid input")
}
