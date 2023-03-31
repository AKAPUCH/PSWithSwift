//dfs 트리 역탐색
let vertex = Int(readLine()!)!
var edges : [[Int]] = Array(repeating: [], count: vertex + 1)
var parentOfVertex = Array(repeating: 0, count: vertex + 1)
for _ in 1..<vertex {
    let node = readLine()!.split(separator: " ").map{Int(String($0))!}
    edges[node[0]].append(node[1])
    edges[node[1]].append(node[0])
}
parentOfVertex[1] = 1
dfs(1)
parentOfVertex[2...].forEach{print($0)}

func dfs(_ vertex : Int) {
    for neighborVertex in edges[vertex] {
        if parentOfVertex[neighborVertex] != 0 {continue}
        parentOfVertex[neighborVertex] = vertex
        dfs(neighborVertex)
    }
}
