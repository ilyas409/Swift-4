// Example: Use the Factory design pattern to decide what type of instance should be created
// in runtime

protocol Shape {
    func draw() -> String
}

class Rectangle : Shape {
    func draw() -> String {
        return "Drawing a Rectangle"
    }
}

class Circle: Shape {
    func draw() -> String {
        return "Drawing a circle"
    }
}

class ShapeFactory {
    func create(for shapeType: String) -> Shape? {
        
        switch shapeType.lowercased() {
        case "rectangle":
            return Rectangle()
        case "circle":
            return Circle()
        default:
            return nil
        }
    }
}

let factory = ShapeFactory()

var shape = factory.create(for: "Rectangle")
shape?.draw()

shape = factory.create(for: "Circle")
shape?.draw()

shape = factory.create(for: "diamond")
shape?.draw()
