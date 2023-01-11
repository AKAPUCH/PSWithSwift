var arr : [Bool] = Array(repeating:false, count:246913) //체       
arr[0] = true
arr[1] = true          
for i in 2..<246913 {          
  if arr[i] {continue}                    
  for j in stride(from: i*i, to: 246913, by: i) {arr[j] = true}          
} 
while(true){
  var cnt = 0
  let input = Int(readLine()!)!
  if input == 0 {break}
  for i in input+1...input*2 {
    if arr[i] {continue}
    cnt+=1
  }
  print(cnt)
}