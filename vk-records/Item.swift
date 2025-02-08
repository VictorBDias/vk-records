//
//  Item.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import Foundation
import SwiftData

@Model
final class Item: Identifiable {
    @Attribute(.unique) var id: UUID = UUID()
    var title: String
    var content: String
    var image: String

    init(title: String, content: String, image: String) {
        self.title = title
        self.content = content
        self.image = image
    }
}
