import Foundation

var str = "https://app.codesignal.com/tournaments/Q2CXFe5Fbddnp5XXX/B"

func exerciseElaboration(p: Int, n: Int) -> Int {
    
    var number: Int = p
    
    for i in 0..<n+1{
        number *= 10
        if i == n {
            number += p
            number *= number
        }
    }

    var result: Int = 0
    
    while number > 0 {
        result += number%10
        number /= 10
    }
    
    return result
}



print(exerciseElaboration(p: 5, n: 1))
