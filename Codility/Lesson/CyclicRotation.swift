//array
public func solution(_ A : inout [Int], _ K : Int) -> [Int] {
    var ans = Array(repeating : 0, count : A.count)
    for i in 0..<A.count {
        ans[(i+K)%A.count] = A[i]
        print(ans)
    }
    return ans
}
