
import Foundation

let numbers = [10, 20, 30, 40, 50]

print("Enter a number to search:")

if let input = readLine(),
   let searchNumber = Int(input) {

    if numbers.contains(searchNumber) {
        print("\(searchNumber) is found in the array")
    } else {
        print("\(searchNumber) is not found in the array")
    }

} else {
    print("Invalid input")
}
