import Foundation

var meetOne = 0//1아직 못만남
var meet = false
var cnt = 0
public func solution(_ N : Int) -> Int {
    var origin = N
    var max : Int = 0
    while origin > 0 {
        let result = origin % 2
        origin /= 2
        if result == 0 { //0을 만남
            if !meet {continue}
            cnt += 1
            
        }else {
            meet = true
                if cnt > max {
                    max = cnt
                    }
            cnt = 0
            }
            //print(origin,result,cnt,meetOne,max)
    }
   return  max
}
//print(solution(561892))
