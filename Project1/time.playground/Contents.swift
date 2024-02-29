/*:
# Problem Description
 Write a function that computes the time difference in minutes and hours from two given hours. The
 function should have as input 4 numbers. The first two will be the first hour and first minute, and the
 second two will be the second hour and second minute. For example, the First hour is 11:30, and the
 second hour is 13:15, then the first number is 11, the second number is 30, the third number is 13, and
 the fourth number is 15. The function should return the time difference between the two hours.
 */
//: # Imports
import SwiftUI
import PlaygroundSupport
/*:
 # Waiting Time Function
 **Function**: Returns the time difference given two hours and minutes
 
 **Parameters**: Takes in 5 parameters, 4 of which are the hour and minutes values, the 5th parameter is a closure that calculates the time difference
 
 Pass in the difference between hours and minutes into the timeDifference closure to calculate the total difference in minutes and hours
 */
func waitingTime(
    firstHour: Int,
    firstMinute: Int,
    secondHour: Int,
    secondMinute: Int,
    timeDifference: (Int, Int) -> String
) -> String {
    return timeDifference(secondHour - firstHour, secondMinute - firstMinute)
}

/*:
 # Calculate Difference Closure
 **Function**: Calculates hour and minute differential between two hours and minutes (times)
 
 **Parameters**: Takes in hour and minute differences respectively as integers
 
 The totalMinutes variable converts hours to minutes and adds the minute difference
 * converting everything to minutes first allows for easy conversion to hours and minutes
 
 Return totalMinutes/60 as hours to get the number of hours and return totalMinutes%60 for minutes because modulous provides the remaining minutes.
 */
let calculateDiff: (Int, Int) -> String = { (hourDiff, minuteDiff) in
    let totalMinutes = hourDiff * 60 + minuteDiff

    return "You should wait \(totalMinutes/60):\(totalMinutes%60)"
}

//: # Test Cases
let result = waitingTime(firstHour: 11, firstMinute: 30, secondHour: 13, secondMinute: 15, timeDifference: calculateDiff)
print(result) // Output: "You should wait 1:45"

let result2 = waitingTime(firstHour: 5, firstMinute: 30, secondHour: 16, secondMinute: 15, timeDifference: calculateDiff)
print(result2) // Output: "You should wait 10:45"

let result3 = waitingTime(firstHour: 4, firstMinute: 30, secondHour: 8, secondMinute: 10, timeDifference: calculateDiff)
print(result3) // Output: "You should wait 3:40"

let result4 = waitingTime(firstHour: 5, firstMinute: 10, secondHour: 7, secondMinute: 22, timeDifference: calculateDiff)
print(result4) // Output: "You should wait 2:12"

let result5 = waitingTime(firstHour: 1, firstMinute: 30, secondHour: 23, secondMinute: 54, timeDifference: calculateDiff)
print(result5) // Output: "You should wait 22:24"
