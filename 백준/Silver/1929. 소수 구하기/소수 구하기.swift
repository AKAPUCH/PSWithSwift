var arr : [Bool] = Array(repeating:false, count:1000001) //체       
arr[0] = true
arr[1] = true          
for i in 2..<1000001 {          
  if arr[i] {continue}                    
  for j in stride(from: i*i, to: 1000001, by: i) {arr[j] = true}          
} 
let input = readLine()!.split(separator: " ").map{Int($0)!}
for x in input[0]...input[1] {
  if arr[x] {continue}
  print(x)
}