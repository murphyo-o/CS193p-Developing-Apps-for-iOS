//
//  GameModel.swift
//  Assignment01-MemorizeGame
//
//  Created by Murph on 2020/11/30.
//

import Foundation
import SwiftUI

struct GameModel<CardContent> where CardContent: Equatable {
    private(set) var cards: [Card]
    
    private var indexOfTheOneAndOnlyFacedUpCard: Int? {
        get {
            cards.indices.filter { cards[$0].isFaceUp }.only
        }
        set {
            for index in cards.indices {
                cards[index].isFaceUp = index == newValue
            }
        }
    }
    
    // MARK: - Initialize type of Model
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false {
            didSet {
                if isFaceUp {
                    startUsingBonusTime()
                } else {
                    stopUsingBonusTime()
                }
            }
        }
        var isMatched: Bool = false {
            didSet {
                stopUsingBonusTime()
            }
        }
        var content: CardContent
        var id: Int
        
        // MARK: - Bonus Time
        
        // this could give matching bonus points
        // if the user matches the card
        // before a certain amount of time passes during which the is face up
        
        // can be zero which means "no bonus available" for this card
        var bonusTimeLimit: TimeInterval = 6
        
        // how long this card has ever been face up
        private var faceUpTime: TimeInterval {
            if let lastFaceUpDate = self.lastFaceUpDate {
                return pastFaceUpTime + Date().timeIntervalSince(lastFaceUpDate)
            } else {
                return pastFaceUpTime
            }
        }
        // the last time this card was turned face up (and is still face up)
        var lastFaceUpDate: Date?
        // the accumulated time this card has been face up in the past
        var pastFaceUpTime: TimeInterval = 0
        
        // how much time left before the bonus opportunity runs out
        var bonusTimeRemaining: TimeInterval {
            max(0, bonusTimeLimit - faceUpTime)
        }
        // percentage of the bonus time remaining
        var bonusRemaining: Double {
            (bonusTimeLimit > 0 && bonusTimeRemaining > 0) ? bonusTimeRemaining / bonusTimeLimit : 0
        }
        // whether the card was matched during the bonus time period
        var hasEarnedBonus: Bool {
            isMatched && bonusTimeRemaining > 0
        }
        // whether we are currently face up, unmatched and have not yet used up the bonus window
        var isConusmingBonusTime: Bool {
            get { isFaceUp && !isMatched && bonusTimeRemaining > 0 }
        }
        
        // called when the card transitions to face up stats
        private mutating func startUsingBonusTime() {
            if isConusmingBonusTime, lastFaceUpDate == nil {
                lastFaceUpDate = Date()
            }
        }
        // called when the card goes back face down (or gets matched)
        private mutating func stopUsingBonusTime() {
            pastFaceUpTime = faceUpTime
            self.lastFaceUpDate = nil
        }
    }
    
    mutating func choose(card: Card) {
        if let chooseIndex = cards.firstIndex(matching: card), !cards[chooseIndex].isMatched, !cards[chooseIndex].isFaceUp {
            if let potentialMatchIndex = indexOfTheOneAndOnlyFacedUpCard {
                if cards[chooseIndex].content == cards[potentialMatchIndex].content {
                    cards[chooseIndex].isMatched = true
                    cards[potentialMatchIndex].isMatched = true
                }
            } else {
                for index in cards.indices {
                    cards[index].isFaceUp = false
                }
            }
            
            cards[chooseIndex].isFaceUp = true
        }
    }
}

class EmojiViewModel: ObservableObject {
    @Published private var model: GameModel<String> = EmojiViewModel.createGame()
        
    static func createGame() -> GameModel<String> {
        let emojis = ["👻", "🎃", "🎭", "🧸", "🐱", "🐶"]
        return GameModel<String>(numberOfPairsOfCards: emojis.count) { pairIndex in
            emojis[pairIndex]
        }
    }
    
    // MARK: - Access to the model
    var cards: [GameModel<String>.Card] {
        model.cards
    }
    
    // MARK: - Interacte with the model
    func choose(card: GameModel<String>.Card) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = EmojiViewModel.createGame()
    }
}



