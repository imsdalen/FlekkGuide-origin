//
//  ButtonView.swift
//  FlekkGuide
//


import SwiftUI

struct ButtonView: View {
    let title: String
    var style: ButtonStyle = .primary
    let action: () -> Void
    
    enum ButtonStyle {
        case primary
        case secondary
    }
    
    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 17, weight: .semibold))
                .foregroundColor(style == .primary ? .white : Color("AppText"))
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(
                    style == .primary
                    ? Color("AppText")        
                    : Color.white
                )
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                .shadow(color: .black.opacity(0.08), radius: 6, y: 3)
        }
    }
}
