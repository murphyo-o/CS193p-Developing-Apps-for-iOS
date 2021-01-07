//
//  Array+Identifiable.swift
//  MemorizeGame
//
//  Created by Murph on 2020/12/4.
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
