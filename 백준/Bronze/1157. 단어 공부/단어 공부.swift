var word = Array(readLine()!.uppercased())

var array = [Int](repeating: 0, count: Int(Character("Z").asciiValue!) - Int(Character("A").asciiValue!)+1)

 for i in word{
  array[Int(i.asciiValue!) - Int(Character("A").asciiValue!)]+=1
 }

var max = array.max()

var cnt = 0
var ind = 1000001
for i in 0..<array.count {
  if array[i] == max {
    cnt+=1
    ind = i
    }
  if cnt>1 {
  ind = 1000001
  break
  }
}
if ind>1000000 {print("?")}
else {print(UnicodeScalar(ind+Int(Character("A").asciiValue!))!)}