/*:
# Problem Description
 A prime number (or a prime) is a natural number greater than 1 that is not a product of two smaller
natural numbers. A natural number greater than 1 that is not prime is called a composite number. For
example, 5 is prime because the only ways of writing it as a product, 1 × 5 or 5 × 1, involve 5 itself.
However, 4 is composite because it is a product (2 × 2) in which both numbers are smaller than 4.
Implement a function that receives as an input a natural number and returns as an output true if the
number is primer or false otherwise.
*/
//: ## Imports
import SwiftUI
import PlaygroundSupport

/*: 
 # Prime Function
 **Function**: Checks if a number is prime or not and returns the respective boolean value (true/false)
 This is a simple problem that doesn't require object, structs, or classes
 
 **Parameters**: takes in a singular integer to determine if that number is prime or not
 
 **Guard Statement**: checks if the number is greater than or equal to 2
 * If not, return false as 0 and 1 are not prime numbers
 * If so, continue
 
 Iterate through a range of numbers starting from 2 all the way up to but not including the given number
 Utilize modulous to check if the number is a product of two smaller natural numbers
 
 Return true or false based on these checks
 */
func prime(_ number: Int) -> Bool {
    guard number >= 2 else { return false }

    for i in 2 ..< number {
        if number % i == 0 {
            return false
        }
    }

    return true
}
//: # Test Cases
print(String(prime(2)))   // **true**
print(String(prime(3)))   // **true**
print(String(prime(10)))  // **false**
print(String(prime(13)))  // **true**
print(String(prime(14)))  // **false**
print(String(prime(21)))  // **false**
print(String(prime(23)))  // **true**
print(String(prime(24)))  // **false**
