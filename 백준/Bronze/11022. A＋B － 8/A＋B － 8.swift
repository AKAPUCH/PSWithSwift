var T = Int(readLine()!)!
for i in 1...T {
  var array = readLine()!.split(separator : " ").map{Int($0)!}
  print("Case #\(i): \(array[0]) + \(array[1]) = \(array.reduce(0,+))")
}
