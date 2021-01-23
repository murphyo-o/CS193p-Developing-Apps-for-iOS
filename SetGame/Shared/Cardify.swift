//
//  Cardify.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI

struct Cardify: ViewModifier {
    var card: GameModel.SetCard
    var lineWidth: CGFloat
    
    func body(content: Content) -> some View {
        ZStack {
            content
            
            GeometryReader { geo in
                HStack(spacing: 5.0) {
                    ForEach(0..<setNumbers(card.numberOfShapes)) { _ -> AnyView in
                        switch card.shape {
                        case .diamondShape:
                            return AnyView(ZStack {
                                DiamondShape().shading(card: card, lineWidth: lineWidth*0.6)
                                DiamondShape().stroke(setColors(card.color), lineWidth: lineWidth)
                            })
                        case .squiggleShape:
                            return AnyView(ZStack {
                                SquiggleShape().shading(card: card, lineWidth: lineWidth*0.6)
                                SquiggleShape().stroke(setColors(card.color), lineWidth: lineWidth)
                            })
                        case .ovalShape:
                            return AnyView(ZStack {
                                OvalShape().shading(card: card, lineWidth: lineWidth*0.6)
                                OvalShape().stroke(setColors(card.color), lineWidth: lineWidth)
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
    func cardify(card: GameModel.SetCard, lineWidth: CGFloat) -> some View {
        self.modifier(Cardify(card: card, lineWidth: lineWidth))
    }
    
    func shading(card: GameModel.SetCard, lineWidth: CGFloat) -> some View {
        self.modifier(ShadePatternBuilder(card: card, lineWidth: lineWidth))
    }
}


