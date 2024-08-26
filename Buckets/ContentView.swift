//
//  ContentView.swift
//  Buckets
//
//  Created by Long Fong Yee on 20/08/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) var modelContext
    @Query(sort: \Bucket.name) var buckets: [Bucket]
    
//    @Query(filter: #Predicate<User> { user in
//        user.name.localizedStandardContains("L") &&
//        user.city == "PJ"
//    }, sort: \User.name) var users: [User]
    
    var body: some View {
        Button {
            let first = Bucket(id: UUID(), name: "TSLA", createDate: .now.addingTimeInterval(86400 * -10))
            let second = Bucket(id: UUID(), name: "AAPL", createDate: .now.addingTimeInterval(86400 * 5))
            modelContext.insert(first)
            modelContext.insert(second)
            let item1 = Item(id: UUID(), createDate: .now, status: "buy", qty: 20, price: 10, total: 0)
            let item2 = Item(id: UUID(), createDate: .now, status: "buy", qty: 30, price: 5, total: 0)
            first.items.append(item1)
            first.items.append(item2)
        } label: {
            Text("Add Sample")
        }
                
        ScrollView(Axis.Set.horizontal, showsIndicators: true) {
            HStack(spacing: 5) {
                ForEach (buckets, id: \.self) { bucket in
                    //note to self: I might not be able to use \.self to uniquely identify bucket
                    VStack(alignment: .leading) {
                        
                        Text("\(bucket.name)")
                        List (bucket.items, id: \.self) { item in
                            //note to self: I might not be able to use \.self to uniquely identify item
                            ItemRow(item: item)
                        }
                        .listStyle(PlainListStyle())//remove the side bars in List
                        

                    }
                    .padding()
                    .foregroundStyle(Color.white)
                    .background(RoundedRectangle(cornerRadius: 10))
                    .foregroundStyle(.blue)
                    .padding()
                }
            }//HStack
            .scrollTargetLayout()
        }//ScrollView
        .scrollTargetBehavior(.paging)        
    }
}

#Preview {
    ContentView()
}
