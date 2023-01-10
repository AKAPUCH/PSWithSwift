var input = readLine()!
var arr =  input.map{Int(String($0))!}
if arr.count == 1 {arr.insert(0, at: 0)}
var arrCopy = arr
var cnt = 0
repeat {
  let temp = arrCopy[0]
  arrCopy[0] = arrCopy[1]
  arrCopy[1] = (temp+arrCopy[1]) % 10
  cnt+=1
} while (arr != arrCopy)

print(cnt)