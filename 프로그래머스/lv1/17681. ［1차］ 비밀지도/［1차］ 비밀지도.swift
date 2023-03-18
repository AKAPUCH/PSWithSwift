func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    let 변환용 = [" ", "#", "#"]
    var arrBinary1 = arr1.map{Int(String($0,radix: 2))!}
    var arrBinary2 = arr2.map{Int(String($0,radix: 2))!}
    var finalArr : [String] = []
    for i in 0..<n {
        var result = String(arrBinary1[i] + arrBinary2[i])
        if result.count < n {result = String(repeating: "0", count: n-result.count) + result}
        for j in 0...2{
            result = result.replacingOccurrences(of: String(j) , with: 변환용[j])
        }
        finalArr.append(result)
    }
    return finalArr
    
}