import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-1/egbueTZRRL5Mm4TXN"

func centuryFromYear(year: Int) -> Int {
    if year % 100 != 0{
        return year/100+1
    }else{
        return year/100
    }
}

centuryFromYear(year: 1991)
