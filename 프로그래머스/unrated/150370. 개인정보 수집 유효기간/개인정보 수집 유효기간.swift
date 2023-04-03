func getRealTime(_ 현재날짜 : String) -> Int {
    let 연월일 = 현재날짜.split(separator: ".").map{Int(String($0))!}
    return 연월일[0] * 12 * 28 + 연월일[1] * 28 + 연월일[2]
}

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var ans : [Int] = []
    let 오늘 = getRealTime(today)
    let 약관종류 = Dictionary(uniqueKeysWithValues: terms.map{(String($0.split(separator: " ")[0]),Int(String($0.split(separator: " ")[1]))! * 28)})
    for index in 1...privacies.count {
        let 경과시간 = 오늘 - getRealTime(String(privacies[index-1].split(separator: " ")[0]))
        let 수집기간 = 약관종류[String(privacies[index-1].split(separator: " ")[1])]!
        
        if 경과시간 >= 수집기간 { ans.append(index) }
        
    }
    return ans
}