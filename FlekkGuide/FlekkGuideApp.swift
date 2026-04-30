//
//  FlekkGuideApp.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

@main
struct FlekkGuideApp: App {
  
  @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
  
  let container: ModelContainer
  
  init() {
    let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "FlekkGuide.store"))
    
    do {
      container = try ModelContainer(for: Fabric.self, Stain.self, Guide.self, WashingGuide.self, configurations: config)
      
      let context = container.mainContext
      let stainCount = try context.fetchCount(FetchDescriptor<Stain>())
      let washingCount = try context.fetchCount(FetchDescriptor<WashingGuide>())

      if stainCount == 0 || washingCount == 0 {
          startData(context: context)
      }
    }
    catch {
      fatalError("Feil ved åpning av database: \(error)")
    }
  }
  
    var body: some Scene {
        WindowGroup {
          if hasSeenOnboarding {
            HomeView()
          } else {
            OnboardingView()
          }
        }
        .modelContainer(container)
    }
}
