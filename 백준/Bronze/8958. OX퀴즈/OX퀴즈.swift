let N = Int(readLine()!)!

for _ in 0..<N {
  let arr = readLine()!.map{$0}
  var count = 1
  var sum = 0
  for i in arr{
    if i == "O" {
      sum+=count
      count+=1
    }
    else {count=1}
  }
  print(sum)
}