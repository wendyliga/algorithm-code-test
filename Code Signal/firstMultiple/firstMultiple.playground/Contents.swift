import UIKit

var link = "https://app.codesignal.com/tournaments/Zva9fWv7yewDmzpot/I/solutions/rGFmLaHDci3DbPsPB"

func firstMultiple(divisors: [Int], start: Int) -> Int {
    var isLoop: Bool = true
    var isFound: Bool = true
    var limit: Int = start
    
    while isLoop{
        isFound = true
        for i in 0..<divisors.count{
            if limit % divisors[i] != 0{
                isFound = false
            }
        }
        
        if isFound{
            isLoop = false
            return limit
        }
        
        limit += 1
    }
}


firstMultiple(divisors: [2,3,4], start: 13)
