//
//  StainDetailView.swift
//  FlekkGuide
//


import SwiftUI

struct StainDetailView: View {
  let guide: Guide
      
      var body: some View {
          ScrollView {
              VStack(alignment: .leading, spacing: 24) {
                  
                  // Info-chips
                  HStack(spacing: 8) {
                      Label(guide.fabric.name, systemImage: "tshirt")
                          .font(.system(size: 13, weight: .medium))
                          .padding(.horizontal, 12)
                          .padding(.vertical, 6)
                          .background(Color(.secondarySystemBackground))
                          .clipShape(Capsule())
                      
                      Label(guide.isFurnitureTip ? "Møbel/teppe" : "Plagg/tekstil", systemImage: "house")
                          .font(.system(size: 13, weight: .medium))
                          .padding(.horizontal, 12)
                          .padding(.vertical, 6)
                          .background(Color(.secondarySystemBackground))
                          .clipShape(Capsule())
                  }
                  
                  // Instruksjoner
                  VStack(alignment: .leading, spacing: 16) {
                      Text("Slik fjerner du flekken")
                          .font(.system(size: 20, weight: .semibold, design: .rounded))
                      
                      Text(guide.instructions)
                          .font(.system(size: 16))
                          .foregroundStyle(.primary)
                          .lineSpacing(6)
                  }
                  .padding(20)
                  .frame(maxWidth: .infinity, alignment: .leading)
                  .background(Color(.secondarySystemBackground))
                  .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
              }
              .padding(.horizontal, 20)
              .padding(.vertical, 24)
          }
          .navigationTitle("\(guide.stain.name) på \(guide.fabric.name)")
          .navigationBarTitleDisplayMode(.large)
      }
}
