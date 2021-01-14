//
//  Collection+Choose.swift
//  SetGame
//
//  Created by Murph on 2021/1/13.
//


extension Collection {
    func choose(_ n: Int) -> ArraySlice<Element> { shuffled().prefix(n) }
}
