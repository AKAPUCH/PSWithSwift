func swapArray(_ arr :  [[Int]], _ count : Int) -> [[Int]] {
      var temp = arr
      for i in 0..<count {
      for j in i+1..<count {
          (temp[i][j], temp[j][i]) = (temp[j][i], temp[i][j])
      }
    }
    return temp
}
func pick(_ index : Int, _ arr : inout [[Int]])-> Int {
    var ans = 0
    for i in 0..<arr[index-1].count { 
      if arr[index-1][i] == 0 {continue}
      ans = arr[index-1][i]
      
      arr[index-1][i] = 0
      break
    }
    return ans
}

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var stack : [Int] = []
    var swapArr = swapArray(board, board.count)
    var cnt = 0
    for i in moves {
      let choice = pick(i, &swapArr)
      if choice == 0 {continue}
      if !stack.isEmpty{        
        if stack.last! == choice {
          stack.popLast()
          cnt+=2
          continue 
          }               
    }
    stack.append(choice)   
    }
    return cnt
}