
import Foundation

let numbers = [10, 15, 20, 25, 30, 35, 40]

var evenCount = 0
var oddCount = 0

for number in numbers {

    if number % 2 == 0 {
        evenCount += 1
    } else {
        oddCount += 1
    }
}

print("Numbers: \(numbers)")
print("Even numbers count: \(evenCount)")
print("Odd numbers count: \(oddCount)")
