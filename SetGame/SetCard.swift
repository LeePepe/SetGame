//
//  SetCard.swift
//  SetGame
//
//  Created by 李天培 on 2018/1/2.
//  Copyright © 2018年 lee. All rights reserved.
//

import Foundation

struct SetCard: Hashable {
    var hashValue: Int {
        return color.rawValue * 1000 +
            symbol.rawValue * 100 +
            shading.rawValue * 10 +
            number.rawValue
        
    }
    
    static func ==(lhs: SetCard, rhs: SetCard) -> Bool {
        return lhs.color == rhs.color && lhs.symbol == rhs.symbol && lhs.shading == rhs.shading && lhs.number == rhs.number
    }
    
    enum Attribute: Int, Hashable {
        case first, second, third
        static let all: [Attribute] = [.first, .second, .third]
    }
    
    let color: Attribute
    let symbol: Attribute
    let shading: Attribute
    let number: Attribute
    
//    var isMatched = false
    var isChose = false
    
}

extension SetCard {
    init(color: Attribute, symbol: Attribute, shading: Attribute, number: Attribute) {
        self.color = color
        self.symbol = symbol
        self.shading = shading
        self.number = number
    }
}
