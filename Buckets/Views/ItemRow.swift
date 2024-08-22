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
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(Color.green)
            HStack(spacing:80) {
                Image(systemName: "person.circle.fill")
                Text(String(item.qty))
                Text(String(item.price))
                Text(String(item.total))
                    
            }
            .padding(.horizontal, 20)

        }
    }
}

#Preview {
    let item = Item(id: UUID(), createDate: .now, status: "buy", qty: 10, price: 19.10, total: 191.10, owner: nil)
    ItemRow(item: item)
}
