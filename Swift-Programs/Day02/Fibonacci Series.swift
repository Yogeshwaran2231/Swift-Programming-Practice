
import Foundation

print("Enter the number of terms:")

if let input = readLine(),
   let n = Int(input), n > 0 {

    var first = 0
    var second = 1

    print("Fibonacci Series:")

    for _ in 1...n {
        print(first, terminator: " ")

        let next = first + second
        first = second
        second = next
    }

} else {
    print("Please enter a valid positive number")
}
