readLine()
var arr = readLine()!.split(separator : " ").map{Int($0)!}
print(arr.min()!, arr.max()!)