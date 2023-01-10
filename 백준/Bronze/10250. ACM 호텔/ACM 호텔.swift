  let T = Int(readLine()!)!
  for _ in 0..<T{
    let arr = readLine()!.split(separator : " ").map{Int($0)!}
    let H = arr[0]
    let N = arr[2]
    print(N%H == 0 ? N/H +  H*100 : N%H*100 + N/H + 1)
  }