var arr : [[Int]] = []
for _ in 0..<9{arr.append(readLine()!.split(separator: " ").map{Int($0)!})}
let max = arr.flatMap{$0}.max()!
print(max)
let index = arr.flatMap{$0}.index(of: max)! + 1
print("\(index%9==0 ? index/9==0 ? 1 : index/9 :index/9+1) \(index%9==0 ? 9:index%9)")
