func nums(_ x : Int) -> Int {
  var cnt = 0
  for i in 1...x {
    let str = String(i).map{Int(String($0))!}
    if i<100 {cnt+=1}
    else if i==1000 {}
    else{
      if str[2] - str[1] == str[1] - str[0]  {cnt+=1}
    }    
  }
  return cnt
}
print(nums(Int(readLine()!)!))