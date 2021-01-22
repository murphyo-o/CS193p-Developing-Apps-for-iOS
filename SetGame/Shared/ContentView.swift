//
//  ContentView.swift
//  Shared
//
//  Created by Murph on 2021/1/12.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    
    var body: some View {
        VStack(spacing: 8.0) {
            Grid(viewModel.cards) { card in
                CardView(card: card, isSelect: viewModel.selections.contains(card))
                    .padding(3)
                    .onTapGesture {
                        viewModel.choose(card: card)
                    }
            }
            .frame(height: UIScreen.main.bounds.width*1.4)
            
            Text("To find out \(viewModel.sets.count) sets. \(viewModel.histories.count != 0 ? "You've found \(viewModel.histories.count) sets." : "")")
                .font(.headline)
                .foregroundColor(Color.black.opacity(0.5))
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black.opacity(0.1))
                    
                    Text("HISTORIES")
                        .font(.system(size: 60, weight: .black))
                        .foregroundColor(.white)
                    
                    HStack {
                        ForEach(viewModel.histories, id: \.self) { set in
                            HistoryView(set: set)
                        }
                        .frame(width: 50)
                    }
                }
            }
            
            Button(action: {
                viewModel.resetGame()
            }) {
                Text("New Game")
            }
        }
        .padding(.horizontal, 5)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
