var x = readLine()!.split(separator : " ").map{Int($0)!}[1]
readLine()!.split(separator : " ").filter({Int($0)!<x}).forEach({print($0, terminator: " ")})