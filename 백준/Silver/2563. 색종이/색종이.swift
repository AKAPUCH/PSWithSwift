
var paper = Array(repeating: Array(repeating: true, count: 101),count: 101)

let n = Int(readLine()!)!
for _ in 0..<n {
    let arr = readLine()!.split(separator: " ").map {Int($0)!}
    for i in arr[1]..<arr[1]+10{
        for j in arr[0]..<arr[0]+10{
            paper[i][j] = false
        }
    }
}
var sum = 0
for line in paper {
    sum += line.reduce(0){$1 ? $0 : $0 + 1}
}
print(sum)


