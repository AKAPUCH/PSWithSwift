let M = Int(readLine()!.split(separator: " ")[1])!
let arr = readLine()!.split(separator: " ").map{Int($0)!}
var max = 0
for i in 0..<arr.count {
    if arr[i]>M {continue}
    for j in i+1..<arr.count {
        if arr[i] + arr[j]>M {continue}
        for k in j+1..<arr.count {
            if arr[i] + arr[j] + arr[k]>M {continue}
            if arr[i] + arr[j] + arr[k]>max {max = arr[i] + arr[j] + arr[k]}
        }
    }
}
print(max)