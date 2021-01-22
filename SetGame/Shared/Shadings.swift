//
//  Shadings.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//

import SwiftUI
import Foundation

enum Shadings: Int, CaseIterable {
    case solid
    case striped
    case open
}

enum SetNumbers: Int, CaseIterable {
    case one
    case two
    case three
}

enum SetColors: Int, CaseIterable {
    case lightOrange
    case lightGreen
    case tiffiny
}

func setNumbers(_ number: SetNumbers) -> Int {
    switch number {
    case .one:
        return 1
    case .two:
        return 2
    case .three:
        return 3
    }
}

func setColors(_ color: SetColors) -> Color {
    switch color {
    case .tiffiny:
        return Color(#colorLiteral(red: 0.5607843137, green: 0.8274509804, blue: 0.9607843137, alpha: 1))
    case .lightGreen:
        return Color(#colorLiteral(red: 0.6235294118, green: 0.7960784314, blue: 0.337254902, alpha: 1))
    case .lightOrange:
        return Color(#colorLiteral(red: 0.9490196078, green: 0.7137254902, blue: 0.2196078431, alpha: 1))
    }
}
