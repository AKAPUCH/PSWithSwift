import Foundation

var arr : [String] = []
var position = (10,12)

func getNormal(_ num : Int, _ dir : Int){
let rL = ["L","R"]
arr.append(rL[dir]); 
if dir == 0 {position.0 = num}
else {position.1 = num}
}

func setArr(_ num : Int, _ hand : String) {
      if num % 3 != 2 {getNormal(num,1 - num % 3); return;}
      let ref = (num / 3, num % 3)
      var pL = (position.0 / 3, position.0 % 3)
      var pR = (position.1 / 3, position.1 % 3)
      pL = pL.1 == 0 ? (pL.0-1, 3) : pL
      pR = pR.1 == 0 ? (pR.0-1, 3) : pR
      let dis1 = abs(ref.0 - pL.0) + abs(ref.1 - pL.1)
      let dis2 = abs(ref.0 - pR.0) + abs(ref.1 - pR.1)
      if dis1 == dis2  {hand == "left" ? getNormal(num,0) : getNormal(num,1)}
      else if dis1 < dis2 {getNormal(num,0)}
      else {getNormal(num,1)}
}
  
func solution(_ numbers:[Int], _ hand:String) -> String {
  let newNumbers = numbers.map{$0 == 0 ? 11 : $0}
  for i in newNumbers {
    setArr(i,hand)
    
  }
    let str = arr.reduce("",+)
  
  return str
    }
    