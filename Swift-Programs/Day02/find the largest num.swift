
import Foundation

let numbers = [25, 10, 45, 30, 60]

var largest = numbers[0]

for number in numbers {
    if number > largest {
        largest = number
    }
}

print("Array: \(numbers)")
print("Largest number = \(largest)")
