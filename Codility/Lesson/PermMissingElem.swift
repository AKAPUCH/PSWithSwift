//O(N)
public func solution(_ A : inout [Int]) -> Int {
    var arr = Array(repeating : 0, count : A.count+2)
    for i in A {
    	arr[i] += 1
    }
    var ans = 0
    for n in 1..<arr.count {
    	if arr[n] == 0 {
    		ans = n
    		break
    	}
    }
    return ans
    
}
