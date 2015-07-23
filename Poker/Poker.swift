//
//  Poker.swift
//  扑克记忆练习
//
//  Created by wangqingxin on 15/4/5.
//  Copyright (c) 2015年 Danbo. All rights reserved.
//

import Foundation

struct Poker {
    var number: Number
    var color: Color
    
    
    enum Color: Int{
        case Spade = 1, Club, Heart, Diamond
    }
    
    enum Number: Int {
        case Ace = 1, Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King
    }
}