// Example of using a singleton in Swift to have only one instance 
// accessing an IO interface

class IOInterface {
	var connectionString = "Some configuration settings"
	var timeout = 1000
	static let instance = IOInterface()
	private init() {}
}

let iOInterface = IOInterface.instance
iOInterface.timeout
iOInterface.configuration = "Different configuration settings"