func solution(_ s:String) -> String {
    var blank = true
    var str = s
    var arr = str.map{Int(String($0)) == nil ? Int(UnicodeScalar(String($0))!.value) : Int(String($0))!}
    for i in 0..<arr.count {
      if arr[i] == 32 {//공백 
      blank = true
      }else{//단어
      if blank {//단어의 시작 
          blank = false
          if arr[i] >= 97 && arr[i] <= 122 {arr[i] -= 32}
        }else { // 단어의 중간 
          if arr[i] >= 65 && arr[i] <= 90 {arr[i] += 32}
        }
      }     
    }
    return arr.map{$0 > 10 ? String(UnicodeScalar($0)!) : String($0)}.joined()
}