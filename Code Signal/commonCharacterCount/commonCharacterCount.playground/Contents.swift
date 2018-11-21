import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32"

func commonCharacterCount(s1: String, s2: String) -> Int {
    // FIRST TRY
    /*
    var counter: Int = 0
    var isSkipLoop: Bool = false
    var mappedS1 = Array(s1)
    var mappedS2 = Array(s2)
    
    for i in 0..<mappedS1.count{
        for j in 0..<mappedS2.count{
            
            if isSkipLoop{
                continue
            }
            
            if mappedS1[i] == mappedS2[j]{
                counter += 1
                mappedS2.remove(at: j)
                mappedS2.insert("0", at: j)
                isSkipLoop = true
                continue
            }
        }
        if isSkipLoop{
            isSkipLoop = false
            continue
        }
    }
    
    return counter*/
    
    // SECOND TRY
    
    var mutableSecondString = s2
    var counter = 0
    
    for char in s1.characters{
        
        if let index = mutableSecondString.characters.index(of: char){
            counter += 1
            mutableSecondString.remove(at: index)
        }
        
    }
    
    return counter
    
}

commonCharacterCount(s1: "zzzz", s2: "zzzzzzz")

