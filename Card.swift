import Foundation

struct Card: Hashable {
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
    
    static func ==(lhs: Card, rhs: Card) -> Bool {
        return lhs.identifier == rhs.identifier
    }
    
    var isFaceUp = false
    var isMatched = false
    private var identifier: Int
    
    private static var indentifierNumber = 0
    
    private static func identifierGenerator() -> Int {
        indentifierNumber += 1
        return indentifierNumber
    }
    init() {
        self.identifier = Card.identifierGenerator()
    }
}
