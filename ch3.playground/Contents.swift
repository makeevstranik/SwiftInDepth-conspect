import Cocoa

struct Run {
    let id: String
    let startTime: Date
    var endTime: Date?
    
    var elapsedTime: TimeInterval {
        Date().timeIntervalSince(startTime)
    }
    var isFinished: Bool {
        endTime != nil
    }
    
    init(_ id: String, _ startTime: Date) {
        self.id = id
        self.startTime = startTime
    }
    
    mutating func setFinished() {
        endTime = Date()
    }
    
}

var run = Run("1", Date())
print(run.elapsedTime)
print(run.elapsedTime)
run.setFinished()

enum Level: Int {
    case elementary=1
    case preInter=2
    case inter=3
    case upperInter=4
    case advanced=5
}

struct LearningPlan {
    let level: Level
    var description: String
    
    lazy private(set) var contents: String = {
        print("Im taking my sweet time to calculate.")
        sleep(2)
        switch level {
            case .elementary: return "Watch an English documentary."
            case .preInter: return "Translate a newspaper article "
            case .inter: return "Transcribe one song."
            case .upperInter: return "Listen to the radio"
            case .advanced: return "Talk English"
        }
    }()
}

var plan = LearningPlan(level: .advanced, description: "Today plan")
print(Date()) // Маркер начала
for _ in 0..<5 { print(plan.contents) }
print(Date())


