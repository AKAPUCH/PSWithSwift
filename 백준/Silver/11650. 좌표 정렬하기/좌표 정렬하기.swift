var arr = [(Int,Int)]()
for _ in 0..<Int(readLine()!)! {
    let input = readLine()!.split(separator: " ").map{Int($0)!}
    arr.append((input[0],input[1]))
}
arr.sorted(by: {$0.0==$1.0 ? $0.1<$1.1 : $0.0<$1.0}).forEach{print("\($0.0) \($0.1)")}
