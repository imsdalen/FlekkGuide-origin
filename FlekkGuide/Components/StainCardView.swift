import SwiftUI

struct StainCardView: View {
    let stain: Stain

    var body: some View {
        VStack(spacing: 6) {
            Image(stain.imageName)
                .resizable()
                .scaledToFill()
                .frame(width: 80, height: 80)
                .clipShape(Circle())
                .shadow(radius: 2) // valgfri, kan fjernes

            Text(stain.name)
                .font(.system(size: 14, weight: .medium))
                .foregroundStyle(.primary)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 8) // gjør trykk-området litt større
        .contentShape(Rectangle()) // gjør hele området klikkbart
    }
}
