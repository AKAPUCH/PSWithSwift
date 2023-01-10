let N = Double(readLine()!)!

let array = readLine()!.split(separator: " ").map{Int($0)!}
let sum = Double(array.reduce(0,+) * 100 / array.max()!)
print(sum / N)