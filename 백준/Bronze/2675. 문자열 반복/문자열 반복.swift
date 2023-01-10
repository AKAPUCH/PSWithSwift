let t = Int(readLine()!)!
for _ in 0..<t {
  let input = readLine()!.split(separator : " ").map{String($0)}
  let cnt = Int(input[0])!
  let str = input[1]

  for x in str{
    for _ in 0..<cnt{
      print(x,terminator: "")
    }
  }
  print()
}