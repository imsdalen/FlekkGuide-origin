//
//  StainGuideView.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

struct StainGuideView: View {
  @Query private var stains: [Stain]
  @State private var showSearch = false
  
  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
    
    var body: some View {
      ScrollView {
        VStack {
          
          // søkeknapp
          Button {
            showSearch = true
          } label: {
            HStack {
              Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
              Text("Søk etter flekk")
                .foregroundStyle(.secondary)
              Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
          }
          .padding(.horizontal, 20)
          .padding(.vertical, 16)
          
          
          LazyVGrid(columns: columns, spacing: 16) {
            ForEach(stains) { stain in
              
            }
          }
          
        }
      }
    }
}

#Preview {
    StainGuideView()
}
