var num1 = Int(readLine()!)!
var num2 = readLine()!
var array = num2.map{Int(String($0))!}
for  i in array.reversed(){
  print(num1 * i )
}
print(num1 * Int(num2)!)
