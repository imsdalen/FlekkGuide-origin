import SwiftUI
import SwiftData

struct WashingGuideView: View {
    
    @Query var guides: [WashingModel]
    
  var body: some View {
      
      ZStack {
          
          // BAKGRUNN
          Color("AppBackground")
              .ignoresSafeArea()
          
          
          // BØLGER
          BackgroundWaves()
          
          
          // INNHOLD
          ScrollView {
              
              LazyVStack(spacing: 16) {
                  
                  ForEach(guides) { guide in
                      
                      NavigationLink(destination: WashingDetailView(guide: guide)) {
                          WashingCardView(title: guide.title)
                      }
                  }
              }
              .padding(.horizontal, 16)
              .padding(.top, 10)
              .padding(.bottom, 40)
          }
      }
      .foregroundColor(Color("AppText"))
      .navigationTitle("Vasketips")
      .navigationBarTitleDisplayMode(.inline)
      .toolbar {
          
          ToolbarItem(placement: .topBarTrailing) {
              
              NavigationLink(destination: SettingView()) {
                  
                  Image(systemName: "gearshape")
                      .foregroundStyle(Color("AppText"))
              }
          }
      }
  }
}
