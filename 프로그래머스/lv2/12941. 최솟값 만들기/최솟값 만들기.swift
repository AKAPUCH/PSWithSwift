func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    
    var newA = A
    newA.sort()
    var newB = B
    newB.sort(by:>)
    for i in 0..<newA.count {
      ans += newA[i] * newB[i]
    }

    return ans
}