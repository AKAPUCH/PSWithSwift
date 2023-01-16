var arr : Set<String> = []
for _ in 0..<Int(readLine()!)! {
    arr.update(with:readLine()!)
}
print(arr.sorted(by: {$0.count==$1.count ? $0<$1: $0.count<$1.count}).joined(separator: "\n"))
