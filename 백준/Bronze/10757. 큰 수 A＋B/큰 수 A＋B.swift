var arr1 : [Int] = Array(repeating : 0, count: 10001)
var arr2 : [Int] = Array(repeating : 0, count: 10001)

let input = readLine()!.split(separator : " ").map{String($0)}
let max = [input[0].count,input[1].count].max()!
let str1 = input[0].reversed().map{String($0)}
let str2 = input[1].reversed().map{String($0)}
for i in 0..<input[0].count {
  arr1[i] = Int(str1[i])!
}
for i in 0..<input[1].count{
  arr2[i] = Int(str2[i])!
}
for i in 0..<10000{
  arr1[i] = arr1[i] + arr2[i]
  if arr1[i] >= 10 {
    arr1[i+1] = arr1[i+1] + 1
    arr1[i] = arr1[i]%10
    }
} 
if arr1[max] != 0 {print(arr1[max], terminator:"")}
for i in (0..<max).reversed() {
  print(arr1[i],terminator:"")
}