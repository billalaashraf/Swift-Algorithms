import UIKit

var valleys = "UDDDUDUUUDDDUDUU";

func countingValleys(n: Int, s: String) -> Int {
    var level:Int = 0;
    var lines:Int = 0;
    
    s.forEach { (char) in
        if char == "U" {
            lines += 1;
        } else {
            if (lines == 0) {
                level += 1;
            }
            lines -= 1;
        }
    }
    
    return level;
}

print(countingValleys(n: 0, s: valleys));
