import Foundation

var str = "https://app.codesignal.com/arcade/intro/level-3/3o6QFqgYSontKsyk4"

func reverseParentheses(s: String) -> String {
    let arrayString = s.characters.map{
        String($0)
    }
   
    var beginIndex: Int = 0
    var endIndex: Int = 0
    
    for i in 0..<arrayString.count{
        if arrayString[i] == "(" {
            beginIndex = i
        }
        
        if arrayString[i] == ")" {
            endIndex = i
            var reversedString = subString(start: beginIndex+1,end: endIndex, string: s)
            var prefixString = subString(start: 0,end: beginIndex, string: s)
            var suffixString = subString(start: endIndex+1,end: s.count, string: s)
    
            return reverseParentheses(s: prefixString + String(reversedString.characters.reversed()) + suffixString)
        }
    }
    return s
}

func subString(start: Int,end: Int, string: String) -> String {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: end)
    
    return String(string[startIndex..<endIndex])
}



reverseParentheses(s: "a(bc)de")
