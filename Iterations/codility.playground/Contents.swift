import Foundation


func convertBinary(_ number: Int) -> String{
    
    var counter:Int = 1
    var temp: Int = number
    var binary: String = ""
    
    while temp > 0{
        binary += "\(mod(temp))"
        temp = temp/2
    }
    print(binary)
    return binary
}

func mod(_ number: Int) -> Int{
    return number%2
}

func calculateBinaryGap(binary: String){
    var counter: [Int] = []
    var indexArray: Int = 0
    var isNewIndex: Bool = false
    
    for i in 0..<binary.count{
        if subString(start: i,end: i+1, string: binary) == "1" {
            if i != 0{
                indexArray += 1
                isNewIndex = true
            }
        }else{
            if counter.count == 0{
                counter.append(0)
            }else{
                if isNewIndex {
                    counter.append(0)
                    isNewIndex = false
                }
            }
            counter[indexArray] += 1
        }
      }
    
    print(counter)
}

func calculateBiggestGap(binary: String)-> Int{
    var counter: [Int] = []
    var indexArray: Int = 0
    var isNewIndex: Bool = false
    var isCounting: Bool = false
    
    for i in 0..<binary.count{
        if subString(start: i, end: i+1, string: binary) == "1" {
            if i != 0{
                indexArray += 1
                isNewIndex = true
            }
            isCounting = true
        }else{
            if counter.count == 0{
                counter.append(0)
            }else{
                if isNewIndex {
                    counter.append(0)
                    isNewIndex = false
                }
            }
            
            if isCounting {
                counter[indexArray] += 1
            }
            
        }
    }
    
    var max: Int = 0
    
    for i in 0..<counter.count{
        if counter[i] > max{
            max = counter[i]
        }
    }
    
    return max
}
func subString(start: Int,end: Int, string: String) -> String {
    let startIndex = string.index(string.startIndex, offsetBy: start)
    let endIndex = string.index(string.startIndex, offsetBy: end)
    return String(string[startIndex..<endIndex])
}

//calculateBinaryGap(binary: convertBinary(529))
print(calculateBiggestGap(binary: convertBinary(32)))
