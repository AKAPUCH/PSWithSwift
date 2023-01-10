var receipt = Int(readLine()!)!
var num = Int(readLine()!)!
var sum = 0
for _ in 0..<num {
  sum += readLine()!.split(separator : " ").map{Int($0)!}.reduce(1,*)
}
receipt == sum ? print("Yes") : print("No")