var num = Int(readLine()!)!
for _ in 1...num {
  let sum = readLine()!.split(separator : " ").map{Int($0)!}.reduce(0){$0 + $1}
  print(sum)
}



