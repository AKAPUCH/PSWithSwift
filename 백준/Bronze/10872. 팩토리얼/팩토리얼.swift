func getFactorial(_ n : Int) {
    if n == 0 {return}
    ans *= n
    getFactorial(n-1)
}
let N = Int(readLine()!)!
var ans = 1
getFactorial(N)
print(ans)
