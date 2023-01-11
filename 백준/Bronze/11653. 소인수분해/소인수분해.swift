var arr : [Bool] = Array(repeating:false, count:10000001) //체       
arr[0] = true
arr[1] = true          
for i in 2..<10000001 {          
  if arr[i] {continue}                    
  for j in stride(from: i*i, to: 10000001, by: i) {arr[j] = true}          
}          
var n = Int(readLine()!)!
var i = 2
while(i<10000001 && n>1){
  if(arr[i]){
  i+=1
  continue
  }
  while(n%i==0){
    print(i)
    n/=i
  }
  i+=1
}