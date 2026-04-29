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
                .foregroundStyle(style == .primary ? Color(.systemBackground) : .primary)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 16)
                .background(style == .primary ? Color(.label) : Color(.secondarySystemBackground))
                .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
        }
    }
}
