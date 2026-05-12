import SwiftUI

struct StainCardView: View {
    
    let stain: Stain
    
    @State private var isPressed = false
    
    var body: some View {
        
        VStack(spacing: 14) {
            
            ZStack {
                
                // Subtil gradient bak bildet
                Circle()
                    .fill(
                        LinearGradient(
                            colors: [
                                Color.white.opacity(0.25),
                                Color.clear
                            ],
                            startPoint: .topLeading,
                            endPoint: .bottomTrailing
                        )
                    )
                    .frame(width: 126, height: 126)
                
                Image(stain.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 118, height: 118)
                    .clipShape(Circle())
                    .shadow(
                        color: Color("AppText").opacity(0.16),
                        radius: 18,
                        y: 10
                    )
                    .shadow(
                        color: .white.opacity(0.5),
                        radius: 4,
                        y: -2
                    )
            }
            
            Text(stain.name)
                .font(.system(size: 19, weight: .semibold, design: .rounded))
                .foregroundStyle(Color("AppText"))
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .minimumScaleFactor(0.9)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 16)
        .scaleEffect(isPressed ? 0.95 : 1)
        .animation(
            .spring(response: 0.22, dampingFraction: 0.7),
            value: isPressed
        )
        .onLongPressGesture(
            minimumDuration: .infinity,
            pressing: { pressing in
                isPressed = pressing
            },
            perform: {}
        )
        .contentShape(Rectangle())
    }
}
