import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-3/3AdBC97QNuhF6RwsQ/solutions"

func isLucky(n: Int) -> Bool {
    var stringInt: String = String(n)
    var arrayCharacter = Array(stringInt)
    
    var n = arrayCharacter.count
    
    var tempLeft: Int = 0
    var tempRight: Int = 0
    
    for i in 0..<n/2{
        if let value = Int("\(arrayCharacter[i])"){
            tempLeft += value
        }
        if let value = Int("\(arrayCharacter[i+n/2])"){
            tempRight += value
        }
    }
    
    
    return tempLeft == tempRight
}

isLucky(n: 1230)
