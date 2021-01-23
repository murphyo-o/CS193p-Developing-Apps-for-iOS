//
//  HistoryView.swift
//  SetGame
//
//  Created by Murph on 2021/1/21.
//

import SwiftUI

struct HistoryView: View {
    var set: Set<GameModel.SetCard>
    
    var body: some View {
        GeometryReader { geo in
            VStack(alignment: .center, spacing: 3.0) {
                ForEach(Array(set)) { card in
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

