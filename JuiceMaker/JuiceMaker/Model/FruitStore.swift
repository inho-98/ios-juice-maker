//
//  JuiceMaker - FruitStore.swift
//  Created by yagom. 
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 과일 저장소 타입
class FruitStore {
    enum Fruit {
        case strawberry, banana, pineapple, kiwi, mango
    }
    
    var fruitStock: [Fruit: Int] = [.strawberry: 10, .banana: 10, .pineapple: 10, .kiwi: 10, .mango: 10]
    
    func addStock(of fruit: Fruit, amount: Int) {
        if var currentStock = fruitStock[fruit] {
            currentStock += amount
        }
    }
    
    func useStock(of fruit: Fruit, amount: Int) {
        if var currentStock = fruitStock[fruit],
           currentStock >= amount
        {
            currentStock -= amount
        } else {
            // error
        }
    }
    
}


