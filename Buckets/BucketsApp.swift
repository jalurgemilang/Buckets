//
//  BucketsApp.swift
//  Buckets
//
//  Created by Long Fong Yee on 20/08/2024.
//

import SwiftUI
import SwiftData

@main
struct BucketsApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Bucket.self)
    }
}
