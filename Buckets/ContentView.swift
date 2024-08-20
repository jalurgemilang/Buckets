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
    
    @State private var selection: Bucket?
    
    var body: some View {
        ForEach buckets, id: \.self { bucket in
            
        }
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
