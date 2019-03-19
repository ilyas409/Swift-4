var closure = { (a: Int, b: Int) -> Int in
    return a + b
}

closure(10, 20)

class Fruit {
    let price: Int
    let name: String
    init(price: Int, name: String){
        self.price = price
        self.name = name
    }
    func print(){
        Swift.print(self.name, self.price)
    }
}

let f1 = Fruit(price: 10, name: "Apples")
let f2 = Fruit(price: 5, name: "Grapes")
let f3 = Fruit(price: 20, name: "Bananas")


var fruits = [f1, f2, f3]

var byName = { (o1: Fruit, o2: Fruit) -> Bool in
    return o1.name < o2.name
}

var byPrice = { (o1: Fruit, o2: Fruit) -> Bool in
    return o1.price < o2.price
}

fruits.sort(by: byName)
for f in fruits{
    f.print()
}
fruits.sort(by: byPrice)
for f in fruits{
    f.print()
}

print("======")
// Non-escaping closure
func checkComparator(f1: Fruit, f2: Fruit, by comparator: (_ fruit1: Fruit, _ fruit2: Fruit) -> Bool){
    print(comparator(f1, f2))
}

checkComparator(f1: f1, f2: f2, by: byName)



// scaping closure to server as completion handler
func eatFruitWithResult0(f: Fruit, completion: @escaping (_ result: String) -> Void){
    print("Start eating")
    completion("Finished eating")
}

eatFruitWithResult0(f: f3, completion: {(result: String) in
    print(result)
})
