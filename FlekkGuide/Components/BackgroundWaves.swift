import SwiftUI

struct BackgroundWaves: View {
    
    var showTopWaves: Bool = false
    
    var body: some View {
        
        ZStack {
            
          // MARK: TOPPBØLGER

          if showTopWaves {
              
              VStack {
                  
                  ZStack(alignment: .top) {
                      
                      // Lys toppbølge
                      WaveShape(
                          control1X: 0.22,
                          control1Y: 70,
                          control2X: 0.78,
                          control2Y: -55
                      )
                      .fill(
                          Color(red: 0.70, green: 0.80, blue: 0.93)
                              .opacity(0.10)
                      )
                      .frame(height: 240)
                      .rotationEffect(.degrees(180))
                      
                      
                      // Midtbølge
                      WaveShape(
                          control1X: 0.18,
                          control1Y: -60,
                          control2X: 0.82,
                          control2Y: 45
                      )
                      .fill(
                          Color(red: 0.52, green: 0.66, blue: 0.86)
                              .opacity(0.08)
                      )
                      .frame(height: 190)
                      .rotationEffect(.degrees(180))
                      
                      
                      // Mørkere toppbølge
                      WaveShape(
                          control1X: 0.30,
                          control1Y: 50,
                          control2X: 0.72,
                          control2Y: -40
                      )
                      .fill(
                          Color(red: 0.34, green: 0.50, blue: 0.76)
                              .opacity(0.07)
                      )
                      .frame(height: 150)
                      .rotationEffect(.degrees(180))
                  }
                  
                  Spacer()
              }
          }
            
            
            // MARK: BUNNBØLGER
            
            VStack {
                
                Spacer()
                
                ZStack(alignment: .bottom) {
                    
                    // Lys bølge
                    WaveShape(
                        control1X: 0.20,
                        control1Y: -50,
                        control2X: 0.78,
                        control2Y: 40
                    )
                    .fill(
                        Color(red: 0.70, green: 0.80, blue: 0.93)
                            .opacity(0.12)
                    )
                    .frame(height: 220)
                    
                    
                    // Midtbølge
                    WaveShape(
                        control1X: 0.16,
                        control1Y: 35,
                        control2X: 0.82,
                        control2Y: -28
                    )
                    .fill(
                        Color(red: 0.52, green: 0.66, blue: 0.86)
                            .opacity(0.10)
                    )
                    .frame(height: 180)
                    
                    
                    // Mørkere bølge
                    WaveShape(
                        control1X: 0.28,
                        control1Y: 45,
                        control2X: 0.72,
                        control2Y: -35
                    )
                    .fill(
                        Color(red: 0.34, green: 0.50, blue: 0.76)
                            .opacity(0.10)
                    )
                    .frame(height: 140)
                }
            }
        }
        .ignoresSafeArea()
    }
}
