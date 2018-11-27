import UIKit

var str = "https://app.codesignal.com/arcade/intro/level-4/cC5QuL9fqvZjXJsW9"


func alternatingSums(a: [Int]) -> [Int] {
    var team1: Int = 0
    var team2: Int = 0
    
    
    for i in 0..<a.count {
        if i % 2 == 0 {
            team1 += a[i]
        }else{
            team2 += a[i]
        }
    }
    
    return [team1,team2]
}



alternatingSums(a: [50, 60, 60, 45, 70])


