func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    var 도달한플레이어수 = stages.count
    var 카운팅배열 : [Int] = Array(repeating: 0, count: N+2)
    var ans : [(Int,Double)] = []
    for 현재스테이지 in stages {
        카운팅배열[현재스테이지] += 1
    }
    for 현재스테이지 in 1...N {
        let 클리어못한사람 = 카운팅배열[현재스테이지]
        ans.append((현재스테이지,Double(클리어못한사람)/Double(도달한플레이어수)))
        도달한플레이어수 -= 클리어못한사람
    }
    ans.sort{
        if $0.1 == $1.1 {return $0.0<$1.0}
        else {return $0.1>$1.1}
    }
    
    return ans.map{$0.0}
}