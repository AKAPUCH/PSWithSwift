var T = Int(readLine()!)!
for i in 1...T {
  print("Case #\(i): \(ans(readLine()))")
}

func ans(_ str : String?) -> Int {
  return str!.split(separator : " ").map{Int($0)!}.reduce(0,+)
}