//Array
public func solution(_ A : inout [Int]) -> Int {
    var dictionary : [Int:Int] = [:]
    for i in A {
       if dictionary[i] == nil {
           dictionary[i] = 1
       } else {
           dictionary[i] = nil
       }
    }
    var ans = -1
    for i in dictionary.keys {ans = i}
    return ans
}
