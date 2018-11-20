import UIKit

var link = "https://app.codesignal.com/tournaments/Zva9fWv7yewDmzpot/F/solutions/cGreuivsMiLMjcJgi"

func houseNumbersSum(inputArray: [Int]) -> Int {
    var result: Int = 0
    
    for i in 0..<inputArray.count{
        if inputArray[i] == 0{
            return result
        }else{
            result += inputArray[i]
        }
    }
    return result
}

houseNumbersSum(inputArray: [5, 1, 2, 3, 0, 1, 5, 0, 2])
