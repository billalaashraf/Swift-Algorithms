import UIKit

var array = [1,2,2,3,2,3,4,3,4,2];

func sockMerchant(n: Int, ar: [Int]) -> Int {
    var count = 0;
    var pairs:[Int:Int] = [:];
    for item in ar {
        if pairs[item] != nil {
            pairs.removeValue(forKey: item);
            count += 1;
        } else {
            pairs[item] = 1;
        }
    }
    return count;
}

print(sockMerchant(n: array.count, ar: array));
