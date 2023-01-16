let n = Int(readLine()!)!
var arr = Array(repeating: 0, count: n)
for i in 0..<n {
  arr[i] = Int(readLine()!)!
}
arr.sorted(by:<).forEach{print($0)}