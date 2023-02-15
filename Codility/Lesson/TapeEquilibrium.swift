//누적합
public func solution(_ A : inout [Int]) -> Int {
    for i in 1..<A.count {
      A[i] = A[i-1] + A[i]
    }
    let sum = A[A.count-1]
    var min = sum-2 * A[0]
    for i in 1..<A.count-1 {
      A[i] = abs(sum-2 * A[i])
      min = Swift.min( min, A[i])
    }
    return min
}
