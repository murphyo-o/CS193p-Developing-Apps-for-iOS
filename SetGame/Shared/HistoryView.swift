//
//  HistoryView.swift
//  SetGame
//
//  Created by Murph on 2021/1/21.
//

import SwiftUI

struct HistoryView: View {
    var set: [GameModel.SetCard]
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 3.0) {
                ForEach(set) { card in
                    Circle()
                        .stroke(Color.black.opacity(0.2), lineWidth: 2)
                        .cardify(card: card, lineWidth: 1)
                }
                .frame(width: geo.size.height/3.3, height: geo.size.height/3.3)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct HistoryView_Previews: PreviewProvider {
    static var previews: some View {
        let set = [
            GameModel.SetCard(numberOfShapes: .one, shape: .ovalShape, shading: .open, color: .lightGreen),
            GameModel.SetCard(numberOfShapes: .one, shape: .squiggleShape, shading: .open, color: .lightGreen),
            GameModel.SetCard(numberOfShapes: .three, shape: .diamondShape, shading: .open, color: .lightGreen)
        ]
        return HStack(alignment: .center, spacing: 0) {
            ForEach(0 ..< 3) { item in
                HistoryView(set: set)
            }
            .frame(height: 200)
        }
    }
}
