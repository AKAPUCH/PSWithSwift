var cnt = 0
func recursion(_ s : Array<Character>, _ l : Int, _ r : Int) -> Int {
    cnt+=1
    if l >= r {return 1}
    else if s[l] != s[r] {return 0}
    else {return recursion(s, l+1, r-1)}
}
func isPalindrome(_ s : Array<Character>) -> Int {
    return recursion(s, 0, s.count-1)
}
for _ in 0..<Int(readLine()!)! {
    let arr = Array(readLine()!)
    print("\(isPalindrome(arr)) \(cnt)")
    cnt = 0
}