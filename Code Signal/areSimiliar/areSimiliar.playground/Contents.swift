import Foundation

var str = "https://app.codesignal.com/arcade/intro/level-4/xYXfzQmnhBvEKJwXP"

//func areSimilar(a: [Int], b: [Int]) -> Bool {
//
//    var isSwapBefore: Bool = false
//    var numberOfSwap: Int = 0
//    var swapOriginIndex: Int = 0
//    var swapDestIndex: Int = 0
//
//    if a == b {
//        return true
//    }
//
//    for i in 0..<a.count{
//        print("index: \(i)")
//        if isSwapBefore{
//            print("#")
//            print("\(i) == \(swapDestIndex)")
//            if i == swapDestIndex{
//                print("##")
//                if a[i] != b[swapOriginIndex]{
//                    print("###")
//                    return false
//                }
//                isSwapBefore = false
//                continue
//            }else{
//                print("####")
//                if a[i] != b[i]{
//                    print("#####")
//                    return false
//                }
//            }
//        }else{
//            print("*")
//
//            if a[i] != b[i]{
//                print(numberOfSwap)
//                if numberOfSwap > 0{
//                    print("out of try")
//                    return false
//                }
//
//                print("**")
//                var isLoop = true
//                var index = 1
//
//
//
//                while isLoop {
//
//                    print("***")
//                    print("\(i+index) > \(a.count)")
//                    if i+index >= a.count{
//                        return false
//                    }
//
//                    if a[i] == b[i+index] {
//                        print("****")
//                        isSwapBefore = true
//                        isLoop = false
//                        swapOriginIndex = i
//                        swapDestIndex = i+index
//                        numberOfSwap += 1
//                        break
//                    }
//
//                    if i+index == a.count-1{
//                        print("*****")
//                        print("\(i)+\(index) == \(a.count-1)")
//                        isLoop = false
//                        return false
//                    }else{
//                        print("******")
//                        index += 1
//                    }
//                }
//            }
//        }
//
//        continue
//
//    }
//
//    return true
//}

func areSimilar(a: [Int], b: [Int]) -> Bool {
    var numberOfSwap: Int = 0
    var tempArrayA: Int = 1
    var tempArrayB: Int = 1
    
    if a.count != b.count{
        return false
    }

    if a == b{
        return true
    }
    
    for i in 0..<a.count{
        if a[i] != b[i]{
            numberOfSwap += 1
            tempArrayA *= a[i]
            tempArrayB *= b[i]
        }
    }
    
    return numberOfSwap <= 2 && tempArrayA == tempArrayB
}

areSimilar(a: [1,3,2], b: [1,2,3])

