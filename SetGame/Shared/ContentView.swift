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
        VStack {
            Grid(viewModel.cards) { card in
                CardView(card: card)
                    .padding(3)
                    .onTapGesture {
                        viewModel.choose(card: card)
                    }
            }
            .frame(height: UIScreen.main.bounds.width*1.5)
            
            Spacer()
            
            Button(action: { }) {
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
