import Foundation
let graph = ["A" : ["B", "E"],
             "B" : ["C"],
             "C" : ["Z"],
             "D" : ["C"],
             "E" : ["D","F"],
             "F" : ["C"]]

func findPath(from origin: String, to destination: String) ->Bool{
    var stack = [origin]
    while !stack.isEmpty{
        guard let node = stack.popLast() else {continue}
        if node == destination{
            return true
        }
        guard let nodes = graph[node] else {continue}
        stack.append(contentsOf: nodes)
    }
    return false
}

findPath(from: "A", to: "Z")
