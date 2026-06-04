import SwiftUI
import SwiftData

struct StainGuideView: View {
    
    @Query private var stains: [Stain]
    
    @State private var searchText: String = ""
    @FocusState private var searchFocused: Bool
    
    let columns = [
        GridItem(.flexible(), spacing: 12),
        GridItem(.flexible(), spacing: 12)
    ]
    
    var filtered: [Stain] {
        if searchText.isEmpty {
            return stains
        }
        
        return stains.filter {
            $0.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            // 🔹 Bakgrunn
            Color("AppBackground")
                .ignoresSafeArea()
          
            BackgroundWaves()
            
            
            // 🔹 Subtil gradient øverst
            LinearGradient(
                colors: [
                    Color.white.opacity(0.18),
                    Color.clear
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .frame(height: 240)
            .ignoresSafeArea()
            
            
            ScrollView {
                
                VStack(spacing: 24) {
                    
                    HStack(spacing: 12) {
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundStyle(Color("AppText").opacity(0.6))
                        
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
                    .padding(.vertical, 14)
                    .background(
                        RoundedRectangle(cornerRadius: 18)
                            .fill(Color.white.opacity(0.92))
                    )
                    .overlay(
                        RoundedRectangle(cornerRadius: 18)
                            .stroke(Color.white.opacity(0.5), lineWidth: 1)
                    )
                    .shadow(
                        color: .black.opacity(0.05),
                        radius: 12,
                        y: 6
                    )
                    .padding(.horizontal, 20)
                    .padding(.top, 8)
                    
                    
                  if filtered.isEmpty && !searchText.isEmpty {
                        
                        VStack(spacing: 12) {
                            
                            Image(systemName: "magnifyingglass")
                                .font(.system(size: 40))
                                .foregroundStyle(.secondary)
                            
                            Text("Denne flekken finnes ikke enda")
                                .font(.headline)
                            
                            Text("Prøv et annet søk")
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }
                        .padding(.top, 60)
                    }
                    
                    
                    // 🔹 Grid
                    LazyVGrid(columns: columns, spacing: 28) {
                        
                        ForEach(filtered) { stain in
                            
                            NavigationLink {
                                StainQuestionView(stain: stain)
                            } label: {
                                StainCardView(stain: stain)
                            }
                            .buttonStyle(.plain)
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.bottom, 32)
                }
            }
        }
        .foregroundStyle(Color("AppText"))
        .navigationTitle("Flekkguide")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .topBarTrailing) {
                
                NavigationLink(destination: SettingView()) {
                    
                    Image(systemName: "gearshape")
                        .foregroundStyle(Color("AppText"))
                }
            }
        }
    }
}
