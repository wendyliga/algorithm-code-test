import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-3/D6qmdBL2NYz49XHwM"

func sortByHeight(a: [Int]) -> [Int] {
    var arrayHeight: [Int] = []
    var tempA = a
    
    for i in 0..<a.count{
        if a[i] != -1{
            arrayHeight.append(a[i])
        }
    }
    
    arrayHeight.sort()
    
    for i in 0..<a.count{
        if a[i] != -1{
            tempA[i] = arrayHeight[0]
            arrayHeight.remove(at: 0)
        }
    }
    
    
    return tempA
}

sortByHeight(a: [-1, 150, 190, 170, -1, -1, 160, 180])

