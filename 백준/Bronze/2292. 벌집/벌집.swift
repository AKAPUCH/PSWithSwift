var x = Int(readLine()!)!
for n in 1...100001{
  if x >= (n*(n+1)/2)*6 - 6*n + 2{continue}
  print(n)
  break
}