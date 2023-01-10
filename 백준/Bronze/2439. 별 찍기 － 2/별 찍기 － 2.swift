let n = Int(readLine()!)!
Array(1...n).forEach{
  print(String(repeating: " ", count: n-$0) + String(repeating: "*", count: $0))
  }