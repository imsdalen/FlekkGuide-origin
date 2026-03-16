//
//  Item.swift
//  FlekkGuide
//
//  Created by Ingrid Skoge on 16/03/2026.
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
