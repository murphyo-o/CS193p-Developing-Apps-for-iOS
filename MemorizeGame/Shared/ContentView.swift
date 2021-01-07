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
        VStack {
            Grid(viewModel.cards) { card in
                CardView(card: card)
                    .padding(3)
                    .onTapGesture {
                        viewModel.choose(card: card)
                    }
            }
            .padding(8)
            
            Button(action: {
                self.viewModel.resetGame()
            }) {
                Text("New Game")
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
    
    // To monitor the bonusRemaining in the card model.
    @State private var animateBonusRemaining: Double = 0
    
    private func startBonusTimeAnimation() {
        animateBonusRemaining = card.bonusRemaining
        withAnimation(.linear(duration: card.bonusRemaining)) {
            animateBonusRemaining = 0
        }
    }
     
    // MARK: - Drawing Constants
    private func fontSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*0.75
    }
    private func circleSize(for size: CGSize) -> CGFloat {
        min(size.width, size.height)*0.65
    }
    
    // MARK: - Wrapped Up ZStack
    @ViewBuilder
    private func body(for size: CGSize) -> some View {
        if card.isFaceUp || !card.isMatched {
            ZStack {
                Group {
                    if card.isConusmingBonusTime {
                        Pie(startAngle: Angle(degrees: 0-90),
                            endAngle: Angle(degrees: -animateBonusRemaining*360-90),
                            clockwise: true
                        )
                        .fill(Color.orange)
                        .onAppear {
                            startBonusTimeAnimation()
                        }
                    } else {
                        Pie(startAngle: Angle(degrees: 0-90),
                            endAngle: Angle(degrees: -card.bonusRemaining*360-90),
                            clockwise: true
                        )
                        .fill(Color.orange)
                    }
                }
                .opacity(0.4)
                .padding(5)
                // to make the pie shape a ribbon.
                Circle().fill(Color.white).frame(width: circleSize(for: size))
                Text(card.content).font(.system(size: fontSize(for: size)))
            }
            .cardify(isFaceUp: card.isFaceUp)
        }
    }
}
