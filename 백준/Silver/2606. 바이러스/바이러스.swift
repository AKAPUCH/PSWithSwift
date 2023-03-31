//DFS
let v = Int(readLine()!)!
let e = Int(readLine()!)!
var nodeArr : [[Int]] = Array(repeating: [], count: v+1)
var visitedVertex = Array(repeating: false, count: v+1)
var cnt = 0
for _ in 0..<e {
    let node = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodeArr[node[0]].append(node[1])
    nodeArr[node[1]].append(node[0])
}
dfs(1)
print(cnt-1)

func dfs(_ vertex : Int) {
    cnt += 1
    visitedVertex[vertex] = true
    for neighborVertex in nodeArr[vertex] {
        if visitedVertex[neighborVertex] {continue}
        dfs(neighborVertex)
    }
    return
}
