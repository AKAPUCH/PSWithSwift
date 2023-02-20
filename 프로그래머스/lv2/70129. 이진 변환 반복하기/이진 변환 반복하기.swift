func solution(_ s:String) -> [Int] {
    var arr : [Int] = []
    var str = s
    var l = str.count
    while(str != "1") {
      str = str.filter{$0 == "1"}
      arr.append(l-str.count)
      l = str.count
      str = ""
      var leng = l
      while leng > 0 {
        str += String(leng % 2)
        leng /= 2
      }
      str = String(str.reversed())
      l = str.count
    }
    return [arr.count, arr.reduce(0,+)]
}