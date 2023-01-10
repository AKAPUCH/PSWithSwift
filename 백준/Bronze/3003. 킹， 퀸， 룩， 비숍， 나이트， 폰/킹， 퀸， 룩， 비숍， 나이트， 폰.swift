var array = [1,1,2,2,2,8]

var inputArray = readLine()!.split(separator : " ").map{Int($0)!}

for i in 0...5{
  print(array[i] - inputArray[i], terminator: " ")
}