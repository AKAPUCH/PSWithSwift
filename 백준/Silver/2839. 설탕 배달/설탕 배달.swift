let N = Int(readLine()!)!
var cnt = 0
var ans = -1
for i in (0...N/5).reversed() {
  if 5*i + (N-5*i) / 3*3 == N {
  ans = i + (N-5*i) / 3
  break
  }
}
print(ans)