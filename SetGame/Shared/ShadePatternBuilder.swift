//
//  ShadePatternBuilder.swift
//  SetGame
//
//  Created by Murph on 2021/1/14.
//

import SwiftUI

struct ShadePatternBuilder: ViewModifier {
    var card: GameModel.SetCard
    
    func body(content: Content) -> some View {
        Group {
            switch card.shading {
            case .solid:
                ZStack {
                    content.foregroundColor(setColors(card.color))
                }
            case .open:
                content.opacity(0)
            case .striped:
                ZStack {
                    content.opacity(0)
                    StripedPattern()
                        .stroke(setColors(card.color), lineWidth: 2)
                        .mask(content)
                }
            }
        }
    }
}

struct StripedPattern: Shape {
    // MARK: - Drawing Constrains
    var stripedWidth: Int = 4
    var interval: Int = 2
    
    func path(in rect: CGRect) -> Path {
        let numberOfStriped = Int(rect.width) / stripedWidth
        
        var p = Path()
        p.move(to: rect.origin)
        
        for i in 0...numberOfStriped {
            if i % interval == 0 {
                p.addRect(CGRect(x: CGFloat(i * stripedWidth),
                                 y: 0,
                                 width: CGFloat(stripedWidth),
                                 height: rect.height))
            }
        }
        
        return p
    }
}
