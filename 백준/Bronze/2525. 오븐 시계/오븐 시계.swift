var time = readLine()!.split(separator : " ").map{Int($0)!}
var total = time[0] == 0 ? 1440 + time[1] : time[0]*60 + time[1]
var plus = Int(readLine()!)!
print("\((total+plus)/60 >= 24 ? ((total+plus)/60)-24 : (total+plus)/60) \((total+plus)%60)")