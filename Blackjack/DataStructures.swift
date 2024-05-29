

import Foundation

//Sets up the foundations for how to make a card
class Card{
    var suit: String
    var rank: String
    var value: Int
    var image: String
    
    init(suit: String, rank: String, value: Int) {
        self.suit = suit
        self.rank = rank
        self.value = value
        self.image = value < 10 ? suit + "0" + String(value) : suit + String(value)
    }
}

//how to make a deck of cards, using the card class set up above
class Deck{
    var cards: [Card]
    
    init(){
        self.cards = Array<Card>()
    }
    func createDeck() -> [Card]{
        let suits = ["Hearts", "Diamonds", "Clubs", "Spades"]
        let ranks = ["Ace": 1, "Two": 2, "Three": 3, "Four": 4, "Five": 5, "Six": 6, "Seven": 7, "Eight": 8, "Nine": 9, "King": 10, "Queen": 10, "Jack": 10]
        
        var blankDeck: [Card] = []
        
        for suit in suits{
            for rank in ranks{
                let newCard = Card(suit: suit, rank: rank.key, value: rank.value)
                blankDeck.append(newCard)
            }
        }
        return blankDeck
    }
}





