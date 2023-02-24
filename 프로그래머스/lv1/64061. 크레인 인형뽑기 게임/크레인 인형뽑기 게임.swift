func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    var newBoard = board
    let newMoves = moves.map{$0 - 1}
    var box : [Int] = []
    var cnt = 0
    let n = newBoard.count
    
    for column in newMoves{
        for row in 0..<n {
            if newBoard[row][column] == 0 {continue}
            let lastone = box.last
            box.append(newBoard[row][column])
            newBoard[row][column] = 0
            if lastone == box.last {
                cnt += 2
                box.removeLast(2)
            }
            break
        }
    }
    
    return cnt
}