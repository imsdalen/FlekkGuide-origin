//
//  StainGuideView.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

struct StainGuideView: View {
  @Query private var stains: [Stain]
  @State private var showSearch = false
  @State private var searchText: String = ""
  @FocusState private var searchFocused: Bool
  
  let columns = [
    GridItem(.flexible()),
    GridItem(.flexible())
  ]
  
  var filtered: [Stain] {
    if searchText.isEmpty {
      return stains
    }
    return stains.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
  }
    
    var body: some View {
      ScrollView {
        VStack {
          
          // Søkefelt
          if showSearch {
            HStack {
              Image(systemName: "magnifyingglass")
                .foregroundStyle(.secondary)
              TextField("Søk etter flekk", text: $searchText)
                .focused($searchFocused)
              if !searchText.isEmpty {
                Button {
                  searchText = ""
                } label: {
                  Image(systemName: "xmark.circle.fill")
                    .foregroundStyle(.secondary)
                }
              }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 12)
            .background(Color(.secondarySystemBackground))
            .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
            .padding(.horizontal, 20)
            .padding(.vertical, 16)
            .transition(.move(edge: .top).combined(with: .opacity))
          }
          
          
          LazyVGrid(columns: columns, spacing: 16) {
            ForEach(stains) { stain in
              NavigationLink(destination: StainQuestionView(stain: stain)) {
                StainCardView(stain: stain)
              }
            }
          }
          .padding(.horizontal, 20)
          .padding(.bottom, 32)
        }
        .padding(.top, 8)
      }
      .navigationTitle("Flekkguide")
      .navigationBarTitleDisplayMode(.large)
      .toolbar {
        ToolbarItem(placement: .topBarTrailing) {
          Button {
            withAnimation {
              showSearch.toggle()
              if showSearch {
                searchFocused = true
              } else {
                searchText = ""
                searchFocused = false
              }
            }
          } label: {
            Image(systemName: showSearch ? "xmark" : "magnifyingglass")
          }
        }
      }
    }
}

#Preview {
    StainGuideView()
}
