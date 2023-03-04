import Foundation
func solution(_ survey:[String], _ choices:[Int]) -> String {
    var 성격유형 = ""
    var 지표 : [Character : Int] = [:]
    for i in 0..<survey.count {
        let 응답 = 4 - choices[i]
        let 문항유형 = survey[i]
        let key = 응답 > 0 ? 문항유형.first! : 문항유형.last!
        if 지표[key] != nil {지표[key]! += abs(응답)}
        else {지표[key] = abs(응답)}
    }
    var 성격유형표 = ["RT", "CF", "JM", "AN"]
    for 유형 in 성격유형표 {
        if (지표[유형.first!] ?? 0) >= (지표[유형.last!] ?? 0) {성격유형 += String(유형.first!)}
        else {성격유형 += String(유형.last!)}
    }
    
    
    return 성격유형
}