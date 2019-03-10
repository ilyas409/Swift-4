import Foundation

// Adjacency list using a Dictionary with Strings as keys and arrays of Strings as values:
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


// Adjacency list using a Dictionary with Strings as keys and Dictionaries as values.
// Each Dictionary has the node as its key and the a the weight as its value
let graph = ["A" : ["B" : 4, "E" : 10],
             "B" : ["C" : 21],
             "C" : ["Z" : 4],
             "D" : ["C" : 5],
             "E" : ["D" : 5, "F" : 8],
             "F" : ["C" : 12],
             "Z" : [:]
            ]   
