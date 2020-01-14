import UIKit


//public func solution(_ A : [Int]) -> Int {
//    var number = 0;
//    if A.reduce(0, +) == 0 { number += 1; }
//    for index in 0...A.count - 1 {
//        if A[index] == 0 { number += 1; }
//
//        print(A[0...index].reduce(0, +));
//        if A[0...index].reduce(0,+) == 0 { number += 1; }
//
//        print(A[...index].reduce(0, +));
//        if A[...index].reduce(0, +) == 0 { number += 1; }
//    }
//    return number;
//}

public func solution (_ A: [Int]) -> Int {
    var dictionary : [Int:[Int]] = [:];
    var counter : [[Int:Int]] = [];
    var sum  = 0;
    for item in 0..<A.count {
        if A[item] == 0 { counter.append([0:item]) }
        sum += A[item];
        if (sum == 0) {
            counter.append([0: item]);
            var list:[Int] = [];
            if let val = dictionary[sum] {
                list = val;
                for index in 0..<list.count {
                    counter.append([index + 1 : item])
                }
            }
            list.append(item);
            dictionary[sum] = list;
        }
    }
    return counter.count;
}

let arr = [2,-2,3,0,4,-7];
solution(arr);




