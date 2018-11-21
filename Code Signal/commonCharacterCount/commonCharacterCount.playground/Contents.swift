import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-3/JKKuHJknZNj4YGL32"

func commonCharacterCount(s1: String, s2: String) -> Int {
    
    /*let mappedS1 = s1.characters.map{
        String($0)
    }
    
    let mappedS2 = s2.characters.map{
        String($0)
    }*/
    
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
    
    return counter
}

commonCharacterCount(s1: "zzzz", s2: "zzzzzzz")

