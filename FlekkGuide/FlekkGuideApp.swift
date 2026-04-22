//
//  FlekkGuideApp.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

@main
struct FlekkGuideApp: App {
  
  let container: ModelContainer
  
  init() {
    let config = ModelConfiguration(url: URL.documentsDirectory.appending(path: "FlekkGuide.store"))
    
    do {
      container = try ModelContainer(for: Fabric.self, Stain.self, Guide.self, configurations: config)
      
      let context = container.mainContext
      let count = try context.fetchCount(FetchDescriptor<Stain>())
      if count == 0 {
        startData(context: context)
      }
    }
    catch {
      fatalError("Feil ved åpning av database: \(error)")
    }
  }
  
    var body: some Scene {
        WindowGroup {
          ContentView().modelContainer(container)
        }
    }
}
