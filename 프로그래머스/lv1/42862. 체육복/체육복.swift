func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
    var arr = Array(repeating: 1, count: n+1) // 사람 수 + 1 개의 배열 생성. 초기에는 모두 하나씩 가지고 있다고 가정
    for i in lost {arr[i] -= 1} // 잃어버린 사람은 -1
    for j in reserve {arr[j] += 1} // 여벌 있는 사람은 +1
    for k in 1...n {
        if arr[k] == 2 { //체육복 여벌이 있는 사람 기준으로 봤습니다.
            if k-1 >= 1 {
                if arr[k-1] == 0 { //왼쪽 사람이 체육복 없으면 여벌을 나눠줍니다.
                    arr[k-1] += 1
                    arr[k] -= 1
                    continue
                }
            }
            if k+1 <= n { // 왼쪽 사람이 체육복이 있고, 오른쪽 사람은 체육복이 없다면 여벌을 오른쪽에 나눠줍니다.
                if arr[k+1] == 0 {
                    arr[k+1] += 1
                    arr[k] -= 1
                }
            }
        }
    }
    return arr.filter{$0>0}.count - 1
}