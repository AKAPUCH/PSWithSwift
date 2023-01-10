import Foundation

let T = Int(readLine()!)!

for _ in 0..<T {
  let arr = readLine()!.split(separator : " ").map{Double($0)!}
  let avg = arr[1...Int(arr[0])].reduce(0,+) / arr[0]
  let num = Double(arr[1...Int(arr[0])].filter{$0>avg}.count) / arr[0] * 100.0
  // print(num)
   print(String(format: "%.3f", num),"%", separator: "")
}