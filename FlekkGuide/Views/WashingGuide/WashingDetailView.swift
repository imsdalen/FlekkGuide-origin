import SwiftUI

struct WashingDetailView: View {
    
    let guide: WashingGuide
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                
                Text(guide.title)
                    .font(.largeTitle)
                    .bold()
                
                ForEach(guide.tips, id: \.self) { tip in
                    VStack(alignment: .leading, spacing: 5) {
                        Text("Tips")
                            .font(.headline)
                        
                        Text(tip)
                    }
                    
                    Divider()
                }
            }
            .padding()
        }
        .background(Color("AppBackground"))
        .foregroundColor(Color("AppText"))
        .navigationTitle(guide.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
