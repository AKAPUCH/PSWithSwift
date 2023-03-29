let v = Int(readLine()!)!
let e = Int(readLine()!)!
var cnt = 0
var vertexArr : [[Int]] = Array(repeating : [], count : v+1)
for _ in 0..<e {
  let edge = readLine()!.split(separator: " ").map{Int(String($0))!}
  vertexArr[edge[0]].append(edge[1]) // 간선을 저장
  vertexArr[edge[1]].append(edge[0]) // 무방향이므로 반대방향도 넣기
}
var visitCheckArr : [Bool] = Array(repeating: false, count: v+1)
var queue : [Int] = []
queue.append(1)
visitCheckArr[1] = true
while !queue.isEmpty {
  
  
  let visitVertex = queue.removeFirst()
  for neighborVertex in vertexArr[visitVertex] {
    if visitCheckArr[neighborVertex] {continue}
    visitCheckArr[neighborVertex] = true
    cnt += 1
    queue.append(neighborVertex)
  }
}

print(cnt)