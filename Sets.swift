var setOne = Set<Int>()
var setFromArray = Set<Int>([1,2,3])
print(setFromArray.contains(2))

setOne.insert(4)
let newSet = setOne.union(setFromArray)
print(newSet, setOne)

setOne.insert(2)

let intersectionSet = setOne.intersection(setFromArray)
print(intersectionSet)

let subtractingSet = setFromArray.subtracting(setOne)
print(subtractingSet)
