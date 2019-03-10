import Foundation


// Not recommended, but would do the job.
class BaseTask {
    func performTask(){}
}

class TaskA : BaseTask {
    override func performTask() {
        print("Running task A")
    }
}

class TaskB : BaseTask {
    override func performTask() {
        print("Running task B")
    }
}

class TaskFactory {
    func createTask(withtype type: String) -> BaseTask?{
        switch type {
        case "A":
            return TaskA()
        case "B":
            return TaskB()
        default:
            return nil
        }
    }
}

let taskFactory = TaskFactory()
var taskQueue = [BaseTask?]() // Defined as optional in case there are invalid tasks

taskQueue.append(taskFactory.createTask(withtype: "A"))
taskQueue.append(taskFactory.createTask(withtype: "B"))
taskQueue.append(taskFactory.createTask(withtype: "C")) // will be nil

for task in taskQueue{
    if let task = task{
        task.performTask()
    } else{
        print("invalid task")
    }
}

// Preferred way is to use Protocols
protocol BaseTask2{
    var parameter: Int? {get set}
    func performTask()
}

class Task2A : BaseTask2{
    var parameter: Int?
    init(_ parameter: Int) {
        self.parameter = parameter
    }
    func performTask() {
        print("Performing task Task2A")
    }
}

class Task2B : BaseTask2{
    var parameter: Int?
    
    func performTask() {
        print("Performing task Task2B")
    }
}

var taskQueue2 = [BaseTask2?]()
taskQueue2.append(Task2A(0))
taskQueue2.append(Task2B())

for task2 in taskQueue2{
    if let task2 = task2{
        print(task2.performTask())
        if let parameter = task2.parameter{
            print("parameter: \(parameter)")
        }
    }
}
