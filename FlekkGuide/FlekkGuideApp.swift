import SwiftUI
import SwiftData

@main
struct FlekkGuideApp: App {
  
  @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
  
  let container: ModelContainer
  
  init() {
    
    let appearance = UINavigationBarAppearance()
    appearance.configureWithTransparentBackground()
    
    appearance.titleTextAttributes = [
      .foregroundColor: UIColor(named: "AppText")!
    ]
    
    appearance.largeTitleTextAttributes = [
      .foregroundColor: UIColor(named: "AppText")!
    ]
    
    UINavigationBar.appearance().standardAppearance = appearance
    UINavigationBar.appearance().scrollEdgeAppearance = appearance
    UINavigationBar.appearance().tintColor = UIColor(named: "AppText")
    
    
    // 🔧 DATABASE
    let config = ModelConfiguration()
      
    do {
      container = try ModelContainer(
        for: Fabric.self,
        Stain.self,
        Guide.self,
        WashingModel.self,
        configurations: config
      )
      
      let context = container.mainContext
      let stainCount = try context.fetchCount(FetchDescriptor<Stain>())
      let washingCount = try context.fetchCount(FetchDescriptor<WashingModel>())

      if stainCount == 0 || washingCount == 0 {
        startData(context: context)
      }
      
    } catch {
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
