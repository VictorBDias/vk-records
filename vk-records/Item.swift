//
//  Item.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
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
