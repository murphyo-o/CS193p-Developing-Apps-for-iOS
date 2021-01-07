//
//  Array+Only.swift
//  MemorizeGame
//
//  Created by Murph on 2020/12/6.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
