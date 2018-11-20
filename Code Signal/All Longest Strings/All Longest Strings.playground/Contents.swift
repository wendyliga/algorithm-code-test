import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-3/fzsCQGYbxaEcTr2bL"

func allLongestStrings(inputArray: [String]) -> [String] {
    
    var max: Int = 0
    var maxWords: [String] = []
    
    for i in 0..<inputArray.count{
        if inputArray[i].count > max{
            max = inputArray[i].count
            maxWords.removeAll()
            maxWords.append(inputArray[i])
        }else if inputArray[i].count == max{
            maxWords.append(inputArray[i])
        }
    }
    
    return maxWords
    
}

