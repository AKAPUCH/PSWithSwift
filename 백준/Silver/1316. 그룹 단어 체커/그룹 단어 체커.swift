var t = Int(readLine()!)!
var cnt = 0
var counts : Set<Character> = []
for _ in 0..<t{
  let word = Array(readLine()!)
  var flag = true
  var prev = word[0]
  for i in word{
    if counts.insert(i).inserted {prev = i} 
    else if prev == i  {continue}
    else {flag = false; break;}
    if !flag {break}
  }
  if flag {cnt+=1} 
  counts.removeAll()
}
print(cnt)