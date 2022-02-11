# Chapter 2

## 2.2.2 Turn Structure To Enum

- Choose *Enum* when data has mutually exclusive properties.

### Message Data: 

```
enum Message {
    case text(userId: String, contents: String, date: Date)
    case draft(userId: String, date: Date)
    case join(userId: String, date: Date)
    case leave(userId: String, date: Date)
}

func getMessage(message: Message) {
    switch message {
        case let .text(_, contents, date):
            print("\(contents) , \(date)")
        case let .draft(userId, date):
            print("\(userId) , \(date)")
        default: print("other")
    }
    // use *if* where only one case needs to be checked:
     if case let .text(_, contents, _) = message {
        print("\(contents)")
    }
}

```
