import SwiftUI

struct StainDetailView: View {
    
    let guide: Guide
    
    var body: some View {
        
        ZStack {
            
            // BAKGRUNN
            Color("AppBackground")
                .ignoresSafeArea()
            
            
            // BØLGER
            BackgroundWaves()
            
            
            // INNHOLD
            ScrollView {
                
                VStack(alignment: .leading, spacing: 24) {
                    
                    // MARK: Info-chips
                    HStack(spacing: 8) {
                        
                        Label(guide.fabric.name, systemImage: "tshirt")
                            .font(.system(size: 13, weight: .medium))
                            .foregroundColor(Color("AppText"))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(Color.white)
                            .clipShape(Capsule())
                            .shadow(color: .black.opacity(0.05), radius: 3, y: 2)
                        
                        
                        Label(
                            guide.isFurnitureTip
                            ? "Møbel/teppe"
                            : "Plagg/tekstil",
                            systemImage: "house"
                        )
                        .font(.system(size: 13, weight: .medium))
                        .foregroundColor(Color("AppText"))
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background(Color.white)
                        .clipShape(Capsule())
                        .shadow(color: .black.opacity(0.05), radius: 3, y: 2)
                    }
                    
                    
                    // MARK: Generelt tips
                    if !guide.stain.tip.isEmpty {
                        
                        HStack(alignment: .top, spacing: 12) {
                            
                            Image(systemName: "lightbulb.fill")
                                .font(.title3)
                                .foregroundColor(Color("AppText"))
                                .padding(10)
                                .background(Color("AppBackground"))
                                .clipShape(Circle())
                            
                            
                            VStack(alignment: .leading, spacing: 6) {
                                
                                Text("Generelt tips")
                                    .font(.system(size: 14, weight: .bold))
                                    .foregroundColor(Color("AppText"))
                                
                                
                                Text(guide.stain.tip)
                                    .font(.system(size: 15))
                                    .foregroundColor(Color("AppText"))
                                    .lineSpacing(4)
                            }
                            
                            Spacer()
                        }
                        .padding(16)
                        .background(Color.white)
                        .clipShape(
                            RoundedRectangle(
                                cornerRadius: 18,
                                style: .continuous
                            )
                        )
                        .shadow(
                            color: .black.opacity(0.06),
                            radius: 6,
                            y: 3
                        )
                    }
                    
                    
                    // MARK: Instruksjoner
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("Slik fjerner du flekken")
                            .font(
                                .system(
                                    size: 20,
                                    weight: .semibold,
                                    design: .rounded
                                )
                            )
                            .foregroundColor(Color("AppText"))
                        
                        
                        Text(.init(guide.instructions))
                            .font(.system(size: 16))
                            .foregroundColor(Color("AppText"))
                            .lineSpacing(6)
                    }
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white)
                    .clipShape(
                        RoundedRectangle(
                            cornerRadius: 16,
                            style: .continuous
                        )
                    )
                    .shadow(
                        color: .black.opacity(0.05),
                        radius: 6,
                        y: 3
                    )
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 24)
                .padding(.bottom, 40)
            }
        }
        .navigationTitle("\(guide.stain.name) på \(guide.fabric.name)")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            
            ToolbarItem(placement: .topBarTrailing) {
                
                NavigationLink(destination: HomeView()) {
                    
                    Image(systemName: "house")
                        .foregroundStyle(Color("AppText"))
                }
            }
        }
    }
}
