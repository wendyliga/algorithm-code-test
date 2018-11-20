import Foundation

var link = "https://app.codesignal.com/tournaments/Zva9fWv7yewDmzpot/B/solutions/kZN7mghhM3PaTTAMq"

func permutationShift(permutation: [Int]) -> Int {
    var tempArray: [Int] = permutation
    var arrayShift: [Int] = []
    
    tempArray.sort()
    
    for i in 0..<tempArray.count{
        if permutation[i] - tempArray[i] != 0 {
            arrayShift.append(permutation[i] - tempArray[i])
        }
    }
    
    if arrayShift.count == 0{
        return 0
    }
    
    arrayShift.sort()
    
    guard let max = arrayShift.max() , let min = arrayShift.min()  else {
        return 0
    }
    
    return max - min
}

permutationShift(permutation: [1, 0, 2, 3])


