//
//  Item.swift
//  RecipeORama2
//
//  Created by IS 543 on 12/7/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
