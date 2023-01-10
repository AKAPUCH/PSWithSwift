var arr = [Int](repeating: 0, count: 9)
for i in 0..<9 {
  arr[i] = Int(readLine()!)!
  }
  var max = arr.max()!
  print(max, arr.firstIndex(of : max)! + 1)