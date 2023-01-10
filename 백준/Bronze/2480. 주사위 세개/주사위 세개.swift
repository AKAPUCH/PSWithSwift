var arr = readLine()!.split(separator: " ").map{Int($0)!}.sorted(by: > )
var cnt = 1
var same = -1
for num in arr {
  let time =  (arr.filter{$0 == num}).count
  if time == 1 {continue}
    cnt = time
    same = num
    break
}
if cnt == 1 {print(arr[0]*100)}
else if cnt == 2 {print(same*100 + 1000)}
else {print(same*1000 + 10000)}