readLine()          
var arr : [Bool] = Array(repeating:false, count:1001)          
arr[0] = true    
arr[1] = true      
for i in 2..<1001 {          
  if arr[i] {continue}          
            
  for j in stride(from: i*i, to: 1001, by: i){          
    arr[j] = true          
  }          
}                          
print(readLine()!.split(separator: " ").map{Int($0)!}.reduce(0){arr[$1] ? $0 : $0 + 1}) //배열 담기   