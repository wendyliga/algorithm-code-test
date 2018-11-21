import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-2/bq2XnSr5kbHqpHGJC"

func makeArrayConsecutive2(statues: [Int]) -> Int {
    guard let max = statues.max(),let min = statues.min() else{
        return 0
    }
    
    return (max - min + 1) - statues.count
}

makeArrayConsecutive2(statues: [6, 2, 3, 8])
