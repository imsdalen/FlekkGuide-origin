import SwiftUI

struct HomeView: View {
        
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                
                // BAKGRUNN
                Color("AppBackground")
                    .ignoresSafeArea()
                
                
                // BØLGER
                BackgroundWaves()
                
                
                // INNHOLD
                VStack {
                    
                    Image("flekk")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 260)
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, -40)
                        .padding(.top, -40)
                    
                    
                    // Undertittel
                    Text("Smarte tips for klær, møbler og hjem")
                        .font(.subheadline)
                        .foregroundStyle(Color("AppText").opacity(0.65))
                        .padding(.bottom, 15)
                    
                    
                    VStack(spacing: 16) {
                        
                        NavigationLink(destination: StainGuideView()) {
                            
                            HomeCardView(
                                title: "Flekkguide",
                                subtitle: "Finn riktig behandling for flekken din",
                                icon: "drop.triangle.fill",
                                color: Color("AppText")
                            )
                        }
                        
                        
                        NavigationLink(destination: WashingGuideView()) {
                            
                            HomeCardView(
                                title: "Vasketips",
                                subtitle: "Generelle vasketips til hjemmet",
                                icon: "bubbles.and.sparkles",
                                color: Color("AppText")
                            )
                        }
                    }
                    .padding(.horizontal)
                    
                    
                    Spacer()
                    
                    
                    Text("©TeppeRent")
                        .font(.footnote)
                        .foregroundStyle(Color("AppText").opacity(0.65))
                        .padding(.bottom, 15)
                }
            }
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
}
