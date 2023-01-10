var arr = readLine()!.split(separator : " ").map{Int($0)!}

arr[1]>=arr[2] ? print(-1) : print(arr[0] / (arr[2] - arr[1]) + 1)
