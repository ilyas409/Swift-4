import Foundation

let weightedGraph = ["A" : ["B" : 4, "E" : 10],
             "B" : ["C" : 21],
             "C" : ["Z" : 4],
             "D" : ["C" : 5],
             "E" : ["D" : 5, "F" : 8],
             "F" : ["C" : 12],
             "Z" : [:]
            ]
/**
 1. Find the cheapest node
 2. Update the costs for all the neighbors of this node
 3. Repeat (find the cheapest one again)
 4. Calculate the final path
*/
func findShortestPathWithDijkstra(from origin: String, to destination: String, in graph: [String:[String:Int]]) ->[String]{
    var path = [String]()
    
    guard (graph[origin] != nil) else {return path}
    
    var costs = [String: Int]()
    
    var parents = [String: String]()
    costs[origin] = 0
    costs[destination] = Int.max
        
    var queue = [origin]
   

    while !queue.isEmpty{
        let previous = queue.removeFirst()
        guard let nodesArray = graph[previous] else {continue}
        
        for node in nodesArray{
            // price was already registered for this node:
            if let cost = costs[node.key]{
                // new price is cheaper:
                if node.value < cost{
                    costs[node.key] = node.value
                    parents[node.key] = previous
                }
                // no price yet:
            } else {
                costs[node.key] = node.value
                parents[node.key] = previous
            }
            
        }
        queue.append(contentsOf: nodesArray.keys)
    }
    
    var node = destination
    while node != origin{
        node = parents[node]!
        path.append(node)
    }
    return path.reversed()

}
let res = findShortestPathWithDijkstra(from: "A", to: "Z", in: weightedGraph)
print(res)
