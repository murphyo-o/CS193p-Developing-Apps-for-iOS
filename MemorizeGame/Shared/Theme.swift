//
//  Theme.swift
//  MemorizeGame
//
//  Created by Murph on 2021/1/12.
//

import SwiftUI
import Foundation

let examples: [Theme] = [
    Theme(name: "Halloween", emojiList: ["👻","🎃","🕷","👺","🍬","🍭","💀","🧠","👁"]),
    Theme(name: "Gaming", emojiList: ["🎮","🕹","🎳","🎰","👾","🎲","🤖","🏈","🏓","🖥","💻"]),
    Theme(name: "Animals", emojiList: ["🐶","🐱","🐭","🐹","🐰","🦊","🐼","🐨","🐯","🦁","🐮","🐸","🐵","🐤"]),
    Theme(name: "Christmas", emojiList: ["🤶🏻","🎅🏻","🎄","⛄️","☃️","❄️","🎁"]),
    Theme(name: "Food", emojiList: ["🍏","🍐","🍊","🍌","🍋","🍉","🍇","🍓","🍒","🥦","🥕","🧀","🥞","🥩","🍔","🍕"]),
    Theme(name: "Vehicles", emojiList: ["🚗","🚎","🏎","🚓","🚑","🚒","🚜","🚂","✈️","🚀","🛸","🚁","⛵️","🛳","🛶"]),
    Theme(name: "Faces", emojiList: ["😀","😅","🤣","😇","😉","😍","😘","😝","🤪","😎","😡","😳","🥶","🤢"])
]

struct Theme: Identifiable {
    var id = UUID()
    var name: String
    var emojiList: [String]
}

