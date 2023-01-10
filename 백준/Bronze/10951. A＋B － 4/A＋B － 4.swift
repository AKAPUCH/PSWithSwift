while(true) {
    let str = readLine()
    if str == nil {break}
    print(str!.split(separator : " ").map{Int($0)!}.reduce(0,+))
}