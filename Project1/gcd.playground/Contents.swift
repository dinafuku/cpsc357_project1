/*:
 # Problem Description
 The greatest common divisor of two or more integers, which are not all zero, is the largest positive
 integer that divides each of the integers. Write a function that finds the largest common divisors from
 two numbers.
*/
//: # Imports
import SwiftUI
import PlaygroundSupport
/*:
 # GCD Function
 **Function**: Outputs the greatest common divisor between two numbers
 
 **Parameters**: two integers that are used to find the gcd between them
 
 **Code Logic**
 * define two variables that can be reassigned (do not use constants) and set them to the number parameters respectively
 * while the second number isn't equal to zero, store the second number in a temporary constant variable
    * set number 2 to the modulous between number 1 and number 2
    * set number 1 equal to the temporary stored value
 * return number 1

 **Explanation**: This code logic follows the famous Euclidean alogrithm for conducting gcd. Essentially, when reducing the larger number with the samller number, the gcd does not change. We can leverage this idea by utilizing modulous in which one of the numbers (num2) will eventually result in zero. By setting num1 to num2 after each iteration, we are left with the gcd between the two numbers which is then outputted.
 */
func gcd(_ number1: Int, _ number2: Int) -> Int {
    var num1 = number1
    var num2 = number2
    
    while num2 != 0 {
        let temp = num2
        num2 = num1 % num2
        num1 = temp
    }
    
    return num1
}

//: # Test Cases

print(gcd(3,9))     // **3**
print(gcd(8,16))    // **8**
print(gcd(14,12))   // **2**
print(gcd(10,11))   // **1**
print(gcd(3,4))     // **1**
print(gcd(16,27))   // **1**
print(gcd(2,40))    // **2**
print(gcd(22,77))   // **11**
print(gcd(8,64))    // **8**
