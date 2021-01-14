//
//  GameModel.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI
import Foundation

struct GameModel {
    private(set) var cards: [SetCard]
    
    init() {
        var allCards: [SetCard] {
            var all = [SetCard]()
            
            for numberOfShapes in 1...3 {
                for shape in Shapes.allCases {
                    for shading in Shadings.allCases {
                        for color in [Color(#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9607843137, alpha: 1)), Color(#colorLiteral(red: 0.6235294118, green: 0.7960784314, blue: 0.337254902, alpha: 1)), Color(#colorLiteral(red: 0.9490196078, green: 0.7137254902, blue: 0.2196078431, alpha: 1))] {
                            all.append(SetCard(numberOfShapes: numberOfShapes, shape: shape, shading: shading, color: color))
                        }
                    }
                }
            }
            return all
        }
        
        cards = Array(allCards.choose(12))
        
    }
        
    struct SetCard: Identifiable {
        var numberOfShapes: Int
        var shape: Shapes
        var shading: Shadings
        var color: Color
        var isSelect = false
        
        var id = UUID()
    }
    
    mutating func choose(card: SetCard) {
        if let chooseIndex = cards.firstIndex(matching: card) {
            cards[chooseIndex].isSelect.toggle()
        }
    }
}


class ViewModel: ObservableObject {
    @Published private var model: GameModel = ViewModel.creatGame()
    
    static func creatGame() -> GameModel {
        GameModel()
    }
    
    var cards: [GameModel.SetCard] {
        model.cards
    }
    
    func choose(card: GameModel.SetCard) {
        model.choose(card: card)
    }
    
    func resetGame() {
        model = ViewModel.creatGame()
    }
}
