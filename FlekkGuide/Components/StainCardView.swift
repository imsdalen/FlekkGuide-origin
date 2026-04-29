//
//  StainCardView.swift
//  FlekkGuide
//

import SwiftUI

struct StainCardView: View {
    let stain: Stain
    @State private var isPressed = false

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Image(systemName: "drop.fill")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.secondary)
            
            Spacer()
            
            Text(stain.name)
                .font(.system(size: 16, weight: .semibold, design: .rounded))
                .foregroundStyle(.primary)
        }
        .padding(20)
        .frame(maxWidth: .infinity, minHeight: 120, alignment: .leading)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .scaleEffect(isPressed ? 0.97 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
        .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
            isPressed = pressing
        }, perform: {})
    }
}
