/* 14*14 2차원 배열 */

var arr : [[Int]] = Array(repeating: Array(repeating: 0, count: 15), count: 15)
arr[14] = Array(0...14)
for i in (0...13).reversed(){
  for j in 1...14{
    arr[i][j] = arr[i][j-1] + arr[i+1][j]
  }
}
let T = Int(readLine()!)!
for _ in 0..<T {
  print(arr[14-Int(readLine()!)!][Int(readLine()!)!])
}
