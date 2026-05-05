import SwiftUI

struct HomeView: View {
    @AppStorage("isDarkMode") private var isDarkMode = false
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .top) {
                
                Color("AppBackground")
                    .ignoresSafeArea()
                
                VStack {
                    Image("flekk")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .frame(maxWidth: .infinity)
                        .padding(.top, 10)
                        .padding(.bottom, 20)
                    
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
                    
                    Text("En ide av TeppeRent")
                        .font(.footnote)
                        .foregroundColor(Color("AppText"))
                        .padding(.bottom, 24)
                }
            }
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: SettingView()) {
                        Image(systemName: "gearshape")
                            .foregroundColor(Color("AppText")) 
                    }
                }
            }
        }
        .preferredColorScheme(isDarkMode ? .dark : .light)
    }
}
