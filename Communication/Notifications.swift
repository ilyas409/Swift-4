import Cocoa

extension Notification.Name {
    static let didReceiveData = Notification.Name("didReceiveData")
}

class Receiver {
    init(){
        NotificationCenter.default.addObserver(self, selector: #selector(onDidReceiveData(_:)), name: .didReceiveData, object: nil)
    }
    
    @objc func onDidReceiveData(_ notification:Notification) {
        print("received")
    }
}


class Sender {
    init(){
        NotificationCenter.default.post(name: .didReceiveData, object: nil)
    }
}
var receiver = Receiver()

var sender = Sender()
