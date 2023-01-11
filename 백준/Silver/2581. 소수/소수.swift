var arr : [Bool] = Array(repeating:false, count:10001) //체       
arr[0] = true
arr[1] = true          
for i in 2..<10001 {          
  if arr[i] {continue}                    
  for j in stride(from: i*i, to: 10001, by: i) {arr[j] = true}          
}                   
var flag = -1  
var sum = 0        
let start = Int(readLine()!)!
let end = Int(readLine()!)!
for i in start...end{
  if !arr[i] {
    sum += i
    if flag  < 0 {
      flag = i
    }
  }
}
if flag<0 {print(-1)}
else {
  print(sum)
  print(flag)
}