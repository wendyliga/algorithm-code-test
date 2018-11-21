import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-1/s5PbmwxfECC52PWyQ"

func checkPalindrome(inputString: String) -> Bool {
    var status: Bool = true
    
    if inputString.count<2{
        return true
    }
    
    
    if String(inputString.reversed()).lowercased() == inputString.lowercased(){
        return true
    }else{
        return false
    }
}

checkPalindrome(inputString: "madam")
