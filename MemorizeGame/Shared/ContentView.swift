//
//  ContentView.swift
//  Shared
//
//  Created by Murph on 2020/11/30.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = EmojiViewModel()
    
    var body: some View {
        HStack {
            ForEach(viewModel.cards) { card in
                CardView(card: card)
                    .onTapGesture {
                        viewModel.choose(card: card)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct CardView: View {
    var card: GameModel<String>.Card
    
    var body: some View {
        GeometryReader { geo in
            body(for: geo.size)
        }
    }
    
    // MARK: - Drawing Constants
    let cornerRadius: CGFloat = 10
    let edgeLineWidth: CGFloat = 3    
    func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*0.75
    }
    
    // MARK: - Wrapped Up ZStack
    func body(for size: CGSize) -> some View {
        ZStack {
            if card.isFaceUp {
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(Color.white)
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .stroke(Color.orange, style: StrokeStyle(lineWidth: edgeLineWidth))
                Text(card.content)
                    .font(.system(size: fontSize(for: size)))
            } else {
                RoundedRectangle(cornerRadius: cornerRadius, style: .continuous)
                    .fill(Color.orange)
            }
        }
    }
}
