let input = readLine()!.split(separator : " ").map{Int($0)!}
let r = input[0] //행 
let c = input[1] //열 
var arr = Array(repeating:Array(repeating:0,count:c),count:r)
for _ in 0..<2 {
  for a in 0..<r {
  let x = readLine()!.split(separator: " ").map{Int($0)!}
    for i in 0..<c {
      arr[a][i] += x[i]
    }
  }
}
for i in arr {
  for j in i {
    print(j,terminator: " ")
  }
  print()
}