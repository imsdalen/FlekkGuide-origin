import SwiftUI

struct WashingCardView: View {
    
    let title: String
    
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            
            // 🔹 Bakgrunnsbilde
            Image(imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 140)
                .clipped()
            
            // 🔹 Gradient overlay
            LinearGradient(
                gradient: Gradient(colors: [
                    Color.black.opacity(0.6),
                    Color.black.opacity(0.1)
                ]),
                startPoint: .bottom,
                endPoint: .top
            )
            
            // 🔹 Tekst
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
        }
        .frame(height: 140)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
    
    private var imageName: String {
        switch title {
        case "Stue": return "stue"
        case "Kjøkken": return "kjokken"
        case "Bad": return "bad"
        case "Soverom": return "soverom"
        default: return "stue"
        }
    }
}
