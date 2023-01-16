var arr = [(Int,Int, String)]()
for i in 0..<Int(readLine()!)! {
    let s = readLine()!.split(separator: " ").map{String($0)}
    arr.append((i,Int(s[0])!,s[1]))
}
print(arr.sorted(by: {$0.1 == $1.1 ? $0.0<$1.0 : $0.1<$1.1}).map{String($0.1)+" "+$0.2}.joined(separator:"\n"))
