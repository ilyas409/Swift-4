// Example: How to use Abstract Factory to support two different UI themes (dark and light)
protocol Button {
    func draw() -> String
}

class DarkButton: Button{
    func draw() -> String {
        return "Dark Button"
    }
}

class LightButton: Button{
    func draw() -> String {
        return "Light Button"
    }
}

protocol InterfaceFactory {
    func createButton() -> Button
}

class LightInterfaceFactory : InterfaceFactory {
    func createButton() -> Button {
        return LightButton()
    }
}

class DarkInterfaceFactory : InterfaceFactory {
    func createButton() -> Button {
        return DarkButton()
    }
}

enum UIStyle {
    case light, dark
}

class UserConfig {
    var style: UIStyle = .light
}

class UserInterfaceFactory {
    private let darkInterfaceFactory = DarkInterfaceFactory()
    private let lightInterfaceFactory = LightInterfaceFactory()
    
    func getButton(for config: UserConfig) -> Button{
        switch config.style {
        case .light:
            return lightInterfaceFactory.createButton()
        case .dark:
            return darkInterfaceFactory.createButton()
        }
    }
}


var config = UserConfig()
var factory = UserInterfaceFactory()
var button = factory.getButton(for: config)

config.style = .dark
button = factory.getButton(for: config)
