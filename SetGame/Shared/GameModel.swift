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
            
            for numberOfShapes in SetNumbers.allCases {
                for shape in Shapes.allCases {
                    for shading in Shadings.allCases {
                        for color in SetColors.allCases {
                            all.append(SetCard(numberOfShapes: numberOfShapes, shape: shape, shading: shading, color: color))
                        }
                    }
                }
            }
            return all
        }
        
        cards = Array(allCards.choose(12))

    }
        
    struct SetCard: Identifiable, Hashable {
        var numberOfShapes: SetNumbers
        var shape: Shapes
        var shading: Shadings
        var color: SetColors
        
        var id = UUID()
    }
}


class ViewModel: ObservableObject {
    @Published private var model: GameModel = ViewModel.creatGame()
    @Published var histories = [Set<GameModel.SetCard>]()
    @Published var selections = Set<GameModel.SetCard>()
    
    static func creatGame() -> GameModel {
        GameModel()
    }
    
    var cards: [GameModel.SetCard] {
        model.cards
    }
    
    var sets: Set<Set<GameModel.SetCard>> {
        var all = Set<Set<GameModel.SetCard>>()
        var tempSet = Set<GameModel.SetCard>()
        var findOutSet = Set<Set<GameModel.SetCard>>()
        
        for a in cards {
            for b in cards {
                for c in cards {
                    tempSet.insert(a)
                    tempSet.insert(b)
                    tempSet.insert(c)
                    if tempSet.count == 3 {
                        all.insert(tempSet)
                    }
                    tempSet = Set<GameModel.SetCard>()
                }
            }
        }
        
        for sets in all {
            let cards = Array(sets)
            let a = (cards[0].numberOfShapes.rawValue+cards[1].numberOfShapes.rawValue+cards[2].numberOfShapes.rawValue) % 3 == 0
            let b = (cards[0].shape.rawValue+cards[1].shape.rawValue+cards[2].shape.rawValue) % 3 == 0
            let c = (cards[0].shading.rawValue+cards[1].shading.rawValue+cards[2].shading.rawValue) % 3 == 0
            let d = (cards[0].color.rawValue+cards[1].color.rawValue+cards[2].color.rawValue) % 3 == 0
            if a && b && c && d {
                findOutSet.insert(sets)
            }
        }
        
        return findOutSet
    }
    
    func choose(card: GameModel.SetCard) {
        if selections.count < 3 && !selections.contains(card) {
            selections.insert(card)
        } else if selections.contains(card) {
            selections.remove(card)
        }
    }
    
    func resetGame() {
        repeat {
            model = ViewModel.creatGame()
        } while sets.isEmpty
        selections = []
        histories = []
    }
}
