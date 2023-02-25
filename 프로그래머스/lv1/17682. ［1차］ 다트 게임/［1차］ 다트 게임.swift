var num : [Int] = []

func multiply(_ c : String, _ seq : Int) { // 점수처리 함수
    switch c {
    case "#" : num[seq] *= -1
    case "*" :
                if seq > 0 {num[seq-1] *= 2} //첫 수일시 뒤에도 곱하기 2
                num[seq] *= 2
    case "D" : num[seq] *= num[seq]
    case "T" : num[seq] *= (num[seq] * num[seq])
    default : break //S
    }
}

func solution(_ dartResult:String) -> Int {
    var idiot = dartResult.map{String($0)} //인덱스 편의를 위해 변환
    for k in 0..<idiot.count {
        if k > 0 && idiot[k] == "0" && idiot[k-1] == "1" { //10이 나왔을 경우
            idiot[k-1] = "10"
            idiot[k] = "erase"
        }
    }
    idiot = idiot.filter{$0 != "erase"} // 남아있는 0 제거
    num = idiot.compactMap{Int($0)} // 숫자값만 뽑아내기
    
    var cnt = -1 // num배열의 인덱스
        for i in idiot {
            if Int(i) != nil { // 숫자라면
                cnt += 1
                continue
            }
            multiply(i, cnt)
    }
    return num.reduce(0, +) //합 반환
}
