var arr = readLine()!.split(separator : " ").map{Double($0)!}

print((Int)(arr.reduce(0,+)))
print((Int)(arr[0]-arr[1]))
print((Int)(arr.reduce(1,*)))
print((Int)(1/arr.reduce(1){$1/$0}))
 print((Int)(arr[0])%(Int)(arr[1]))