var array = readLine()!.split(separator : " ").map{Int($0)!}

var (A,B,C) = (array[0],array[1],array[2])

print((A+B)%C)
print(((A%C) + (B%C))%C)
print((A*B)%C)
print(((A%C) * (B%C))%C)
