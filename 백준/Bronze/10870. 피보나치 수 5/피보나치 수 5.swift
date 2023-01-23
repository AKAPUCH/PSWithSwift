func getFibonach(_ num1 : Int, _ num2 : Int, _ n : Int) {
    if n == 0 {
        print(num1)
        return
    }
    let num3 = num1 + num2
    getFibonach(num2, num3, n-1)
}
let N = Int(readLine()!)!
var ans = 0
getFibonach(0, 1, N)
