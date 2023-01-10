var time = readLine()!.split(separator : " ").map{Int($0)!}
time[0] = time[0] == 0 ? 24 : time[0]
var total = time.reduce(0){$0 * 60 + $1}

print("\((total-45)/60 == 24 ? 0 : (total-45)/60) \((total-45)%60)")
