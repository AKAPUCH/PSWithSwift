var num = Int(readLine()!)!
var array = readLine()!
var seekNum = Int(readLine()!)!
print((array.split(separator : " ").map{Int($0)!}.filter({$0==seekNum})).count)