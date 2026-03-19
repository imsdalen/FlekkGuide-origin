//
//  FlekkGuideApp.swift
//  FlekkGuide
//
//  Created by Ingrid Skoge on 16/03/2026.
//

import SwiftUI
import SwiftData

@main
struct FlekkGuideApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Hei på dei din gamle sjokolade på badet, jeg er her også: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
