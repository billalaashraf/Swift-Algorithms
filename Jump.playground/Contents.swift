//Jump Game (medium)
//Given an array of non-negative integers, you are initially positioned at the first index of the array.
//
//Each element in the array represents your maximum jump length at that position.
//
//Determine if you are able to reach the last index.
//
//Example 1:
//
//Input: [2,3,1,1,4]
//Output: true
//Explanation: Jump 1 step from index 0 to 1, then 3 steps to the last index.
//Example 2:
//
//Input: [3,2,1,0,4]
//Output: false
//Explanation: You will always arrive at index 3 no matter what. Its maximum
//             jump length is 0, which makes it impossible to reach the last index.

import UIKit

let arr1:[Int] = [2,3,1,1,4];
let arr2:[Int] = [3,2,1,0,4];

func findTheEnd(a:[Int], index:Int) -> Bool {
    guard index < a.count else { return false }
    var val = a[index] + index;
    if val != 0 {
        while val < a.count {
            if val == (a.count - 1) {
                return true
            } else {
                if a[val] == 0 { break; }
                val = val + a[val];
            }
        }
    }
    return false;
    
}

//test case

print(findTheEnd(a: arr1, index: 0));
print(findTheEnd(a: arr2, index: 0));


