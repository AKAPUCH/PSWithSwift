var str = ""
while(true) {
    str = readLine()!
    if str == "0 0"  {break}
    print(str.split(separator : " ").map{Int($0)!}.reduce(0,+))
}