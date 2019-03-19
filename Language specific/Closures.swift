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

