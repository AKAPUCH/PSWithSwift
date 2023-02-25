var num : [Int] = []

func multiply(_ c : String, _ seq : Int) {
    switch c {
    case "#" : num[seq] *= -1
    case "*" :
                if seq > 0 {num[seq-1] *= 2}
                num[seq] *= 2
    case "D" : num[seq] *= num[seq]
    case "T" : num[seq] *= (num[seq] * num[seq])
    default : break //S
    }
}

func solution(_ dartResult:String) -> Int {
    var idiot = dartResult.map{String($0)}
    for k in 0..<idiot.count {
        if k > 0 && idiot[k] == "0" && idiot[k-1] == "1" {
            idiot[k-1] = "10"
            idiot[k] = "F"
        }
    }
    idiot = idiot.filter{$0 != "F"}
    num = idiot.compactMap{Int($0)}
    var cnt = -1

        for i in idiot {
            if Int(i) != nil {
                cnt += 1
                continue
            }
            multiply(i, cnt)
    }
    return num.reduce(0, +)
}