func solution(_ s:String) -> Bool
{
    var open = 0
    var close = 0
    var arr : [Bool] = []
    for i in s {
      if i == "(" {
        arr.append(true)
        open += 1
      }else {
        arr.popLast()
        close += 1
      }
    }
   return arr.isEmpty && open == close
}