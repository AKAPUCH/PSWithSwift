var array = [Int](repeating: -1, count: 31)

for _ in 0..<28 {
  array[Int(readLine()!)!] = 0
}

for i in 1...30 {
  if array[i] == -1 {print(i)}
}