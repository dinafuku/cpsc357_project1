/*:
 # Description
 
 Write a function in Swift to find the longest subsequence of array elements in consecutive order. This is, given a set of numbers, get which are the longest consecutive numbers in the array and what is the length. The consecutive numbers can be in any order. A consecutive sequence doesn’t necessarily require that our elements be in ascending or descending order.
 */
//: # Imports
import SwiftUI
import PlaygroundSupport
/*:
 # Longest Subsequence Function
 
 **Function**: returns the longest subsequence of concecutive elements and the number of elements in that subsequence
 
 **Parameters**: Accepts an array of integers and outputs an array of integers (longest subsequence) and single integer (length of subsequence)
 
 **Variables**
 * longestLen: tracks longest subsequence length
 * currLen: tracks current length of subsequence
 * longestSub: tracks longest subsequence of consecutive integers
 
 **Constants**
 * sortedArray: a sorted version of the input array for easier analysis of consecutive elements
 
 **Code Logic**
 * Define variables to keep track of the current length of the subsequence, longest subsequence, and longest length
 * Sort the input array to allow for easier consecutive integer comparisons
 * Iterate through the array and check if each element is consecutive
    * If the element is a consecutive element, increment the currLen count
    * Else, set currLen to 1 which acts as a form of reset
    * Check if the current subsequence length is greater than the longest subsequence length
        * If so, update the longestLen variable and update the longest subsequence array
 * Return the longest subsequence and length
 */
func longestSub(_ array: [Int]) -> (sub: [Int], len: Int) {
    var longestLen = 0
    var currLen = 1
    var longestSub: [Int] = []
    
    let sortedArray = array.sorted()
    
    for i in 1..<sortedArray.count {
        if sortedArray[i] == sortedArray[i - 1] + 1 {
            currLen += 1
        } else {
            currLen = 1
        }
        if currLen > longestLen {
            longestLen = currLen
            longestSub = Array(sortedArray[i - currLen + 1...i])
        }
    }
    
    return (longestSub, longestLen)
}

//: # Test Cases
let input = [9, 4, 10, 2, 7, 3, 5, 1]
let result = longestSub(input)
print("Output1 -> \(result.sub)")
print("Output2 -> \(result.len)")

let input2 = [50,24,60,28,8,7,6,5,4,3,2,1,0]
let result2 = longestSub(input2)
print("Output1 -> \(result2.sub)")
print("Output2 -> \(result2.len)")
