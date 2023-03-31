let input = readLine()!.split(separator: " ").map{Int(String($0))!}
let (vertex, edge, startVertex) = (input[0],input[1],input[2])
var nodes : [[Int]] = Array(repeating: [], count: vertex + 1)
var visitedVertex = Array(repeating: false, count: vertex + 1)
for _ in 0..<edge {
    let node = readLine()!.split(separator: " ").map{Int(String($0))!}
    nodes[node[0]].append(node[1])
    nodes[node[1]].append(node[0])
}
nodes = nodes.map{$0.sorted(by: <)}
dfs(startVertex)
print()
visitedVertex = Array(repeating: false, count: vertex + 1)
bfs(startVertex)

func bfs(_ vertex : Int) {

    var queue : [Int] = []
    queue.append(vertex)
    visitedVertex[vertex] = true
    print(vertex, terminator: " ")
    while !queue.isEmpty {
        let currentVertex = queue.removeFirst()
        for neighborVertex in nodes[currentVertex] {
            if visitedVertex[neighborVertex] {continue}
            visitedVertex[neighborVertex] = true
            print(neighborVertex, terminator: " ")
            queue.append(neighborVertex)
        }
    }
    
    
}

func dfs(_ vertex : Int) {
    print(vertex, terminator: " ")
    visitedVertex[vertex] = true
    for neighborVertex in nodes[vertex] {
        if visitedVertex[neighborVertex] {continue}
        dfs(neighborVertex)
    }
    return
}
