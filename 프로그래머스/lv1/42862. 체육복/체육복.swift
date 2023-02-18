
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 1, count: n+1)
    for i in lost {arr[i] -= 1}
    for j in reserve {arr[j] += 1}
    for k in 1...n {
        if arr[k] == 2 {
            if k-1 >= 1 {
                if arr[k-1] == 0 {
                    arr[k-1] += 1
                    arr[k] -= 1
                    continue
                }
            }
            if k+1 <= n {
                if arr[k+1] == 0 {
                    arr[k+1] = 3
                    arr[k] -= 1
                }
            }
        }
    }
    return arr.filter{$0>0}.count - 1
}
