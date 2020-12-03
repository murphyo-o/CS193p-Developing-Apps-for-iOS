//
//  GameModel.swift
//  Assignment01-MemorizeGame
//
//  Created by Murph on 2020/11/30.
//

import Foundation
import SwiftUI

struct GameModel<CardContent> {
    var cards: [Card]
    
    // MARK: - Initialize type of Model
    init(numberOfPairsOfCards: Int, cardContentFactory: (Int) -> CardContent) {
        cards = [Card]()
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory(pairIndex)
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
    }
    
    struct Card: Identifiable {
        var isFaceUp: Bool = false
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
    
    mutating func choose(card: Card) {
        let chooseIndex = index(of: card)
        cards[chooseIndex].isFaceUp = !cards[chooseIndex].isFaceUp
    }
    
    func index(of card: Card) -> Int {
        card.id
    }
}

class EmojiViewModel: ObservableObject {
    @Published private var model: GameModel<String> = EmojiViewModel.createGame()
    
    static func createGame() -> GameModel<String> {
        let emojis = ["👻", "🎃", "🕷"]
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
}

