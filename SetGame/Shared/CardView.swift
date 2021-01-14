//
//  CardView.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI

struct CardView: View {
    let card: GameModel.SetCard
    
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
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        let card = GameModel.SetCard(numberOfShapes: 1, shape: .ovalShape, shading: .striped, color: .gray, isSelect: true)
        return CardView(card: card)
    }
}
