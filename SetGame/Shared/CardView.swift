//
//  CardView.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI

struct CardView: View {
    let card: GameModel.SetCard
    var isSelect: Bool
    
    var body: some View {
        GeometryReader { geo in
            body(for: geo.size)
        }
    }
    
    // MARK: - Drawing Constants
    private let cornerRadius: CGFloat = 20
    private let edgeLineWidth: CGFloat = 3
    
    func body(for size: CGSize) -> some View {
        ZStack {
            RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                .stroke(Color.black.opacity(0.3), style: StrokeStyle(lineWidth: edgeLineWidth))
                .cardify(card: card)
            
            if isSelect {
                RoundedRectangle(cornerRadius: 15.0)
                    .stroke(Color.red.opacity(0.5), style: StrokeStyle(lineWidth: 6, dash: [4, 4], dashPhase: 0))
                    .padding(3)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = GameModel.SetCard(numberOfShapes: .one, shape: .ovalShape, shading: .striped, color: .lightGreen)
        return CardView(card: card, isSelect: false)
    }
}
