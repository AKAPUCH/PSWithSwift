/*
 백준 17413번: 단어뒤집기 2
 
 중요 개념 : 스택, 분기 처리
 
 */

var s = readLine()!.map{String($0)} // popLast() 사용을 위해 String 배열로 변환.

var ans = "" //출력 문자열

var stack : [String] = [] // 스택으로 활용할 배열

var meetTag = false // 현재 태그 내부인지 판별.


for i in s {
    switch i {
    case "<" :
        if !stack.isEmpty { // 그 이전까지 단어였다
        while !stack.isEmpty {ans += stack.popLast()!} //뒤에서부터 꺼내기때문에 뒤집혀서 출력
        }
        ans += i // "<"은 이전이 단어 여부에 상관없이 출력
        meetTag = true // 태그 내부에 있다는 의미
        
    case ">" :
        meetTag = false
        ans += i
        
    case " " :
        if !meetTag {while !stack.isEmpty {ans += stack.popLast()!}} //태그 내부의 공백인지 구분
        ans += i
        
    default :
        if meetTag {ans += i} // 태그 내부라면 그대로 출력
        else {stack.append(i)} // 단어라면 스택에 저장
    }
}
while !stack.isEmpty {ans += stack.popLast()!} // 단어를 담은 채로 열린 태그나 공백을 만나지 못하는 케이스 고려
print(ans)
