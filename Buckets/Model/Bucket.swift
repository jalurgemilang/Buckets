//
//  Bucket.swift
//  Buckets
//
//  Created by Long Fong Yee on 20/08/2024.
//

import Foundation
import SwiftData

@Model
class Bucket {
    var id: UUID
    var name: String
    var createDate: Date
    @Relationship(deleteRule: .cascade) var items = [Item]()
    
    init(id: UUID, name: String, createDate: Date) {
        self.id = id
        self.name = name
        self.createDate = createDate
    }
}
