func getNum(_ num:Int, _ limit:Int, _ power:Int) -> Int {
    var cnt = 0
    var n = 1
    while(n<=num/n) {
        if num/n*n == num {
            if n*n == num {cnt-=1}
            cnt+=2
        }
        n+=1
    }
    return cnt > limit ? power : cnt
}
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    return Array(1...number).map{getNum($0, limit, power)}.reduce(0, +)
}