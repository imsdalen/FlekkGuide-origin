//
//  SettingView.swift
//  FlekkGuide
//

import SwiftUI

struct SettingView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
            // Darkmode
            Toggle(isOn: $isDarkMode) {
                Text("Darkmode")
                    .font(.system(size: 16, weight: .medium))
                    .foregroundStyle(.secondary)
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            
            // MARK: - Om oss
            VStack(alignment: .leading, spacing: 8) {
                Text("Om oss")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
                Text("Skriv om samarbeidet med TeppeRent og bacheloren her.")
                    .font(.system(size: 15))
                    .foregroundStyle(.secondary)
                    .lineSpacing(4)
            }
            
            Spacer()
            
            // Footer
            Text("© TeppeRent")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 24)
        }
        .padding(.horizontal, 20)
        .padding(.top, 24)
        .navigationTitle("Innstillinger")
        .navigationBarTitleDisplayMode(.large)
    }
}
