import Foundation

var input = readLine()

if let input = input{
  var arrays = input.components(separatedBy: " ")
  print(Int(arrays[0])!+Int(arrays[1])!)
}