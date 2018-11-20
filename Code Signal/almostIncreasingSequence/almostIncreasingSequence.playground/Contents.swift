import UIKit

var link = "https://app.codesignal.com/arcade/intro/level-2/2mxbGwLzvkTCKAJMG"

func almostIncreasingSequence(sequence: [Int]) -> Bool {
    
    var strikes = 0
    var firstMax = -10000
    var secondMax = -10000
    
    for i in 0...sequence.count - 1 {
        if sequence[i] > firstMax {
            secondMax = firstMax
            firstMax = sequence[i]
        } else if sequence[i] > secondMax {
            firstMax = sequence[i];
            strikes += 1
        } else {
            strikes += 1
        }
    }
    
    return strikes < 2
    
}

almostIncreasingSequence(sequence: [1, 3, 2, 1])
