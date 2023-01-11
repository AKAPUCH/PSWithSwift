var arr : [Bool] = Array(repeating:false, count:10100) //체       
arr[0] = true
arr[1] = true          
for i in 2..<10100 {          
  if arr[i] {continue}                    
  for j in stride(from: i*i, to: 10100, by: i) {arr[j] = true}          
} 
let T = Int(readLine()!)!
for _ in 0..<T {  
  let input = Int(readLine()!)!
  var ans = 2
  var max = (0,Int.max)
  while(2*ans<=input){
    if !arr[ans],!arr[input-ans] {
      if   max.1 - max.0 > input-2 * ans {max = (ans, input-ans)}
    }
    ans+=1
  }
  print("\(max.0) \(max.1)")
}