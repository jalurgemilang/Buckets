//
//  ItemRow.swift
//  Buckets
//
//  Created by Long Fong Yee on 21/08/2024.
//

import SwiftUI

struct ItemRow: View {
    var item: Item
    
    var body: some View {

            VStack {
                Image(systemName: "person.circle.fill")
                Text(item.qty.description)
                Text(item.status)
                Text(item.price.description)
                Text(item.total.description)
            }
            .padding(.horizontal, 20)
    }
}

// MARK: - PREVIEWS
