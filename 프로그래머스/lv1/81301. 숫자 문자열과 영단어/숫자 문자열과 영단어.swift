func solution(_ s:String) -> Int {
    var str = ""
    var 문자검사 = ""
    let 인덱스가곧숫자 = ["zero","one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    let 편의를위한변환 = s.map{String($0)}
    for 자릿값 in 편의를위한변환 {
        if Int(자릿값) != nil {
            str += 자릿값
            continue
        }
        문자검사 += 자릿값
        if 인덱스가곧숫자.contains(문자검사) {
            str += String(인덱스가곧숫자.firstIndex(of: 문자검사)!)
            문자검사 = ""
        }
    }
    return Int(str)!
}