import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-2/xzKiBHjhoinnpdh6m"

func adjacentElementsProduct(inputArray: [Int]) -> Int {
    var max: Int = 0
    
    for i in 0..<inputArray.count-1 {
        if inputArray[i] * inputArray[i+1] > max || i == 0 {
            max = inputArray[i] * inputArray[i+1]
        }
    }
    return max
}

adjacentElementsProduct(inputArray: [3,6,-2,-5,7,3])
