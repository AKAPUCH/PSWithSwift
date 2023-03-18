func solution(_ N:Int, _ stages:[Int]) -> [Int] {
    
    // 총 플레이어 수를 카운트
    var players = stages.count
    var 카운팅배열 : [Int] = Array(repeating: 0, count: N+2)
    // 스테이지별 실패율 저장할 배열
    // 딕셔너리 vs 어레이..
    var failureRates = Array(repeating: (index: 0, rate: 0.0), count: N)
    for 현재스테이지 in stages {
        카운팅배열[현재스테이지] += 1
    }
    // 스테지의 계산 스타트
    for i in 1...N {
        // 현재 스테이지
        let current = 카운팅배열[i]
        
        
        // 실패율 계산 부분
        // 도달 X -> 0.0 처리
        let failureRate = players > 0 ? Double(current) / Double(players) : 0.0
        
        // 실패율 i-1번에 저장
        failureRates[i-1] = (i, failureRate)
        
        // 다음스테이지 플레이어 마이너스
        players -= current
    }
    
    // 정렬 -> 여기서 아마 시간초과 5, 22 번
    return failureRates.sorted { $0.rate > $1.rate || ($0.rate == $1.rate && $0.index < $1.index) }.map { $0.index }
}