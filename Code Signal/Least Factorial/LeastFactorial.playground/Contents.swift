import UIKit

var str = "https://app.codesignal.com/tournaments/b8WSQhXJMcPrZ9vev/C/solutions/bSLCGDogBBii7hZ22"

func leastFactorial(n: Int) -> Int {
    var isLoop: Bool = true
    var temp: Int = 1
    var index: Int = 1
    while(isLoop){
        temp *= index
        index += 1
        
        if temp>=n{
            isLoop = false
            return temp
        }
    }
}



leastFactorial(n: 15)
