var s = Array(readLine()!).map{String($0)} // index다루기가 힘들기 때문에 배열로 변환. 향후 스트링과 더해줄거이므로 스트링으로 변환
var ans = ""
var stack : [String] = [] // 스택
var meetTag = false // 현재 태그 내부인지 판별.
for i in s {
    switch i {
    case "<" : if !stack.isEmpty {
        while !stack.isEmpty {ans += stack.popLast()!}
    }
        ans += i
        meetTag = true
        
    case ">" : meetTag = false
        ans += i
    case " " : if !meetTag {while !stack.isEmpty {ans += stack.popLast()!}}
        ans += i
    default : if meetTag {ans += i}
        else {stack.append(i)}
    }
}
while !stack.isEmpty {ans += stack.popLast()!}
print(ans)