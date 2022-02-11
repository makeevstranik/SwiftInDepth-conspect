import Cocoa

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
