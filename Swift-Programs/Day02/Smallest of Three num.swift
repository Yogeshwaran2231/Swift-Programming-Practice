
import Foundation

print("Enter first number:")
let num1 = Int(readLine()!)!

print("Enter second number:")
let num2 = Int(readLine()!)!

print("Enter third number:")
let num3 = Int(readLine()!)!

if num1 <= num2 && num1 <= num3 {
    print("\(num1) is the smallest number")
} else if num2 <= num1 && num2 <= num3 {
    print("\(num2) is the smallest number")
} else {
    print("\(num3) is the smallest number")
}
