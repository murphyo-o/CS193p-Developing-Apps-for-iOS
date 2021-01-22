//
//  Cardify.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI

struct Cardify: ViewModifier {
    var card: GameModel.SetCard
    
    func body(content: Content) -> some View {
        ZStack {
            content
            
            GeometryReader { geo in
                HStack(spacing: 5.0) {
                    ForEach(0..<setNumbers(card.numberOfShapes)) { _ -> AnyView in
                        switch card.shape {
                        case .diamondShape:
                            return AnyView(ZStack {
                                DiamondShape().shading(card: card)
                                DiamondShape().stroke(setColors(card.color), lineWidth: 3)
                            })
                        case .squiggleShape:
                            return AnyView(ZStack {
                                SquiggleShape().shading(card: card)
                                SquiggleShape().stroke(setColors(card.color), lineWidth: 3)
                            })
                        case .ovalShape:
                            return AnyView(ZStack {
                                OvalShape().shading(card: card)
                                OvalShape().stroke(setColors(card.color), lineWidth: 3)
                            })
                        }
                    }.frame(maxWidth: (geo.size.width-30)/3)
                }
                .padding(10)
                .frame(maxWidth: geo.size.width)
            }
        }
    }
}


extension View {
    func cardify(card: GameModel.SetCard) -> some View {
        self.modifier(Cardify(card: card))
    }
    
    func shading(card: GameModel.SetCard) -> some View {
        self.modifier(ShadePatternBuilder(card: card))
    }
}


