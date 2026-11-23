
import Foundation

var sum = 0.0

for i in 1...5 {
    print("Enter number \(i):")

    if let input = readLine(),
       let number = Double(input) {
        sum += number
    } else {
        print("Invalid input")
        exit(0)
    }
}

let average = sum / 5

print("Total = \(sum)")
print("Average = \(average)")
