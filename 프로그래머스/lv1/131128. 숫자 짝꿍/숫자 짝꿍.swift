var arr1 = Array(repeating: 0, count: 10)
var arr2 = Array(repeating: 0, count: 10)

func getCountsOfNum(_ num : String, _ arr : inout [Int] ){
    var x = num.map{Int(String($0))!}
    for i in x {
        arr[i] += 1
    }
}

func getPairs(_ X:String, _ Y:String) -> String{
    var str = ""
    getCountsOfNum(X,&arr1)
    getCountsOfNum(Y,&arr2)
    for i in 0...9 {
        arr1[i] = min(arr1[i], arr2[i])
    }
    if arr1.reduce(0,+) == 0 {return "-1"}
    for i in (0...9).reversed() {
        for _ in 0..<arr1[i] {
            str += String(i)
        }
    }
    return str[str.startIndex] == "0" ? "0" : str
   
}
func solution(_ X:String, _ Y:String) -> String {
    return getPairs(X, Y)
    
}