import Foundation

// buat empty array temp yang index nya sama dengan soal karena gw menampung sementara array karena perlu mengindexkan pa

func processArray(_ A: [Int],_ K: Int) -> [Int]{
    var array = A
    var tempResult = A
    
    var temp: Int = 0
    
    for _ in 0..<K{
        for i in 0..<A.count{
            temp = 0
            if i < A.count - 1{
                array[i+1] = tempResult[i]
                
            }else{
                array[0] = tempResult[i]
            }
        }
        tempResult = array
    }
    
    return array
}

print(processArray([3,8,9,7,6],3))


