var x = Int(readLine()!)!
var y = Int(readLine()!)!

switch (x,y) {
  case (0... , 0...) : print(1)
    case (..<0 , 0...) : print(2)
      case (..<0 , ..<0) : print(3)
        default : print(4)
}