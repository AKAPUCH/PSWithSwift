
func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var box : [Int] = []
    var cnt = 0
    var newBoard = board
    var newMoves = moves.map{$0 - 1}
    let n = newBoard.count
    for column in newMoves{
    for row in 0..<n {
        if newBoard[row][column] == 0 {continue}
        let lastone = box.last
        box.append(newBoard[row][column])
        newBoard[row][column] = 0
        if lastone == box.last {
            cnt += 2
            box.popLast()
            box.popLast()
        }
        break
    }
        }
    
    return cnt
}

