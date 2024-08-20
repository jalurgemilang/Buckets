//
//  Item.swift
//  Buckets
//
//  Created by Long Fong Yee on 20/08/2024.
//

import Foundation
import SwiftData

@Model
class Item {
    var id: UUID
    var createDate: String
    var status: String
    var qty: Int
    var price: Decimal
    var total: Decimal
    var owner: Bucket?
    
    init(id: UUID, createDate: String, status: String, qty: Int, price: Decimal, total: Decimal, owner: Bucket? = nil) {
        self.id = id
        self.createDate = createDate
        self.status = status
        self.qty = qty
        self.price = price
        self.total = total
        self.owner = owner
    }
    
    
}
