print(readLine()!.map{
  convertAlphabet(String($0))
}.reduce(0,+))

func convertAlphabet(_ alphabet : String) -> Int{
  var cnt = 0
   switch alphabet {
    case "A","B","C" : cnt = 3
    case "D","E","F" : cnt = 4
    case "G","H","I" : cnt = 5
    case "J","K","L" : cnt = 6
    case "M","N","O" : cnt = 7
    case "P","Q","R","S" : cnt = 8
    case "T","U","V" : cnt = 9
    default : cnt = 10
  }
  return cnt
}