//
//  HomeCardView.swift
//  FlekkGuide
//

import SwiftUI

struct HomeCardView: View {
  let title: String
  let subtitle: String
  let icon: String
  let color: Color
  
  @State private var isPressed = false
  
    var body: some View {
      VStack(alignment: .leading, spacing: 20) {
          
        Image(systemName: icon)
          .font(.system(size: 28, weight: .medium))
            .foregroundStyle(color)
        
          VStack(alignment: .leading, spacing: 6) {
            Text(title)
              .font(.system(size: 22, weight: .semibold, design: .rounded))
              .foregroundColor(.primary)
            
            Text(subtitle)
              .font(.system(size: 15, weight: .regular))
              .foregroundColor(.secondary)
              .multilineTextAlignment(.leading)
              .lineSpacing(3)
          }
      }
        .padding(24)
        .frame(maxWidth: .infinity, minHeight: 160, alignment: .leading)
        .background(Color(.secondarySystemBackground))
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .scaleEffect(isPressed ? 0.97 : 1.0)
        .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isPressed)
        .onLongPressGesture(minimumDuration: .infinity, pressing: { pressing in
            isPressed = pressing
        }, perform: {})
    }
}

#Preview {
  HomeCardView(title: "Title", subtitle: "Subtitle", icon: "house", color: .red)
}
