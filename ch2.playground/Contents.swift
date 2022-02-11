import Cocoa
// 2.2.2
enum Message {
    case text(userId: String, contents: String, date: Date)
    case draft(userId: String, date: Date)
    case join(userId: String, date: Date)
    case leave(userId: String, date: Date)
    case balloon(userId: String, date: Date)
}

let mes = Message.text(userId: "User1", contents: "Hello", date: Date())

func getMessage(message: Message) {
    switch message {
        case let .text(_, contents, date):
            print("\(contents) , \(date)")
        case let .draft(userId, date):
            print("\(userId) , \(date)")
        default: print("other")
    }
    if case let .text(_, contents, _) = message {
        print("\(contents)")
    }
}


getMessage(message: mes)
// 2.3.1
//struct Run {
//    let id: String
//    let startTime: Date
//    let endTime: Date
//    let distance: Float
//    let onRunningTrack: Bool
//}
//struct Cycle {
//    enum CycleType {
//        case regular
//        case mountainBike
//        case racetrack
//    }
//    let id: String
//    let startTime: Date
//    let endTime: Date
//    let distance: Float
//    let incline: Int
//    let type: CycleType
//}

class Workout {
    let id: String
    let time: [String: Date]
    let distance: Float
    init(id: String, start: Date, end: Date, distance: Float) {
        self.id = id
        self.time = ["start": start, "end": end]
        self.distance = distance
    }
}

class Run: Workout {
    let onRunningTrack: Bool
    init(id: String, start: Date, end: Date, distance: Float, onRunningTrack: Bool) {
        self.onRunningTrack = onRunningTrack
        super.init(id: id, start: start, end: end, distance: distance)
    }
}
