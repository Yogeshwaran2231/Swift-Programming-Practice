
import Foundation

print("Enter a number:")

if let input = readLine(),
   let number = Int(input) {

    var isPrime = true

    if number <= 1 {
        isPrime = false
    } else {
        for i in 2..<number {
            if number % i == 0 {
                isPrime = false
                break
            }
        }
    }

    if isPrime {
        print("\(number) is a Prime Number")
    } else {
        print("\(number) is not a Prime Number")
    }

} else {
    print("Invalid input")
}
