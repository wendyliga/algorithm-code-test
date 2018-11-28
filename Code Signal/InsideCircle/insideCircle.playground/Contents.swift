import UIKit

var str = "https://app.codesignal.com/tournaments/Q2CXFe5Fbddnp5XXX/C"

func insideCircle(point: [Int], center: [Int], radius: Int) -> Bool {
    
    return sqrt(pow(Double(point[0] - center[0]),2) + pow(Double(point[1] - center[1]),2)) <= Double(radius)
    
}
insideCircle(point: [1, 1], center: [2, 2], radius: 1)
