import SwiftUI
import SwiftData

struct WashingGuideView: View {
    
    @Query var guides: [WashingGuide]
    
    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 16) {
                
                ForEach(guides) { guide in
                    NavigationLink(destination: WashingDetailView(guide: guide)) {
                        WashingCardView(title: guide.title)
                    }
                }
            }
            .padding(.horizontal, 16)
            .padding(.top, 10)
        }
        .background(Color("AppBackground"))
        .foregroundColor(Color("AppText"))    
        .navigationTitle("Vasketips")
        .navigationBarTitleDisplayMode(.large)
    }
}
