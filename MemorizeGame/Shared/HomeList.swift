//
//  HomeList.swift
//  MemorizeGame
//
//  Created by Murph on 2021/1/12.
//

import SwiftUI

struct HomeList: View {
    var body: some View {
        NavigationView {
            List(examples) { theme in
                VStack(alignment: .leading) {
                    Text(theme.name)
                        .font(.headline)
                    Text(theme.emojiList.joined())
                        .font(.body)
                        .lineLimit(1)
                }
            }
            .navigationBarTitle(Text("Memorize"))
        }
    }
}

struct HomeList_Previews: PreviewProvider {
    static var previews: some View {
        HomeList()
    }
}
