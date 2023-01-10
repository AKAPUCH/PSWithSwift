var sets = Set<Int>()
for _ in 0..<10 {
  sets.insert(Int(readLine()!)! % 42)
}
print(sets.count)