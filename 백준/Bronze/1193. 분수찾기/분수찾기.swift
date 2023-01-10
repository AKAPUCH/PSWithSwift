let input = Int(readLine()!)!
var n = 1
while(true){
  if input >= n*(n+1)/2 - n+1 {
    n+=1
    continue
    }
  let max = n-1
  let dif = n*(n-1)/2 - input
  n%2 == 1 ? print("\(max-dif)/\(1+dif)") : print("\(1+dif)/\(max-dif)")
  break
}