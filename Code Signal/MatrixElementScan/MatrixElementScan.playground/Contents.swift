func matrixElementsSum(matrix: [[Int]]) -> Int {
    
    var result: Int = 0
    
    // HORIZONTAL SCAN
    
    //var bannedX: [Int] = []
    //for i in 0..<matrix.count{
    //    for j in 0..<matrix[i].count{
    //
    //        if matrix[i][j] != 0 && !bannedX.contains(j){
    //            result += matrix[i][j]
    //        }else{
    //            bannedX.append(j)
    //        }
    //
    //    }
    //}
    //
    //return result
    
    // VERTICAL SCAN
    
    for i in 0..<matrix[0].count{
        for j in 0..<matrix.count{
            
            if matrix[j][i] != 0{
                result += matrix[j][i]
            }else{
                break
            }
        }
    }
    
    return result
}

matrixElementsSum(matrix: [[0,1,1,2],
                           [0,5,0,0],
                           [2,0,3,3]])
