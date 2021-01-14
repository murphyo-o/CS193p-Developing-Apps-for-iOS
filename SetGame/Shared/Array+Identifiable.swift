//
//  Array+Identifiable.swift
//  SetGame
//
//  Created by Murph on 2021/1/14.
//

import Foundation

extension Array where Element: Identifiable {
    func firstIndex(matching: Element) -> Int? {
        for index in 0..<self.count {
            if self[index].id == matching.id {
                return index
            }
        }
        return nil
    }
}
