import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-4/ZCD7NQnED724bJtjN"

func addBorder(picture: [String]) -> [String] {
    var result: [String] = []
    var borderCharacter: Character = "*"
    var border = getBorder(count: picture[0].count,char: borderCharacter)
    
    for i in 0..<picture.count{
        if i == 0 {
            result.append(border)
        }
        
        var temp = picture[i]
        temp.insert(borderCharacter, at: temp.startIndex)
        temp.insert(borderCharacter, at: temp.endIndex)
        
        result.append(temp)
        
        if i == picture.count - 1{
            result.append(border)
        }
    }
    
    return result
}

func getBorder(count: Int,char: Character) -> String{
    var temp = String()
    for i in 0..<count+2{
        temp.append(char)
    }
    
    return temp
}



addBorder(picture: ["abc","ded"])
