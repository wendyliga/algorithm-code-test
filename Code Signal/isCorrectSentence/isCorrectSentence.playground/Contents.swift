import Foundation

var link = "https://app.codesignal.com/tournaments/Zva9fWv7yewDmzpot/C/solutions/dpbSv7m8mQCuqDKar"

func isCorrectSentence(inputString: String) -> Bool {
    // 1st solution
    /* let characterset = CharacterSet(charactersIn: "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ")
     
     
     
     if subString(start: 0,end: 0+1,string: inputString).rangeOfCharacter(from: characterset.inverted) != nil {
     return false
     }
     
     if subString(start: 0,end: 0+1,string: inputString) == subString(start: 0,end: 0+1,string: inputString).uppercased && subString(start: inputString.count-1,end: inputString.count,string: inputString) == "."{
     return true
     }else{
     return false
     }
     */
    
    // 2nd Solution
    var inputArray = Array(inputString)
    
    return ("A"..."Z").contains("\(inputArray[0])") && "\(inputArray[inputArray.count-1])" == "."
    
}

func subString(start: Int,end: Int, string: String) -> String {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: end)
    return String(string[startIndex..<endIndex])
}

isCorrectSentence(inputString: "this is wrong.")
