var input = readLine()!.map{String($0)}
var arr = ["c=",
"c-",
"dz=",
"d-",
"lj",
"nj",
"s=",
"z="]
var cnt = 0
var i = 0
while(i<input.count){
  cnt+=1
  if i+1 < input.count {
    if arr.contains(input[i]+input[i+1]){i+=1}
    else if i+2 < input.count {
      if arr.contains(input[i]+input[i+1]+input[i+2]){i+=2}
    }
  }
  i+=1
}
print(cnt)