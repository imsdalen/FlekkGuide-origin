//
//  OnboardingView.swift
//  FlekkGuide
//

import SwiftUI

struct OnboardingView: View {
    
    @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
    @State private var currentStep = 0
    
    let steps = [
        (
            title: "",
            subtitle: "Din guide til å fjerne flekker og holde hjemmet rent.",
            image: "flekkLogo",
            isLogo: true
        ),
        (
            title: "Flekkguide",
            subtitle: "Få riktige tips for rødvin, olje, kaffe, blod og mer.",
            image: "flekkBilde",
            isLogo: false
        ),
        (
            title: "Vasketips",
            subtitle: "Enkle tips for kjøkken, bad, stue og hjemmet ditt.",
            image: "mop",
            isLogo: false
        )
    ]
    
    var body: some View {
        
        ZStack {
            
            // BAKGRUNN
            Color("AppBackground")
                .ignoresSafeArea()
            
            
            // BØLGER
          BackgroundWaves(showTopWaves: true)
            
            
            // INNHOLD
            VStack(spacing: 0) {
                
                Spacer()
                
                
                // BILDE / LOGO
                if steps[currentStep].isLogo {
                    
                    Image(steps[currentStep].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 150)
                        .padding(.bottom, 40)
                    
                } else {
                  
                  GeometryReader { geo in
                      
                    Image(steps[currentStep].image)
                        .resizable()
                        .scaledToFit()
                        .frame(width: geo.size.width * 1.05)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .offset(x: -17)
                        .clipShape(RoundedRectangle(cornerRadius: 36))
                          .shadow(
                              color: Color("AppText").opacity(0.12),
                              radius: 20,
                              y: 10
                          )
                  }
                  .frame(height: 360)
                  .padding(.bottom, -30)
              }
                
                
                // TEKST
                VStack(spacing: 16) {
                    
                    Text(steps[currentStep].title)
                        .font(.system(size: 34, weight: .bold, design: .rounded))
                        .multilineTextAlignment(.center)
                    
                    Text(steps[currentStep].subtitle)
                        .font(.system(size: 20))
                        .foregroundStyle(.secondary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(5)
                        .padding(.horizontal, 10)
                }
                .padding(.horizontal, 32)
                
                
               
                Spacer()
                
                
                // SIDEINDIKATOR
                HStack(spacing: 10) {
                    
                    ForEach(0..<steps.count, id: \.self) { index in
                        
                        Capsule()
                            .fill(
                                index == currentStep
                                ? Color("AppText")
                                : Color("AppText").opacity(0.18)
                            )
                            .frame(
                                width: index == currentStep ? 34 : 10,
                                height: 10
                            )
                            .scaleEffect(index == currentStep ? 1.05 : 1)
                            .animation(.spring(response: 0.35), value: currentStep)
                    }
                }
                .padding(.bottom, 26)
                
                
                // KNAPPER
                HStack(spacing: 12) {
                    
                    if currentStep > 0 {
                        
                        ButtonView(title: "Tilbake", style: .secondary) {
                            
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                                currentStep -= 1
                            }
                        }
                    }
                    
                    if currentStep < steps.count - 1 {
                        
                        ButtonView(title: "Neste") {
                            
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                                currentStep += 1
                            }
                        }
                    } else {
                        
                        ButtonView(title: "Kom i gang") {
                            hasSeenOnboarding = true
                        }
                    }
                }
                .padding(.horizontal, 20)
                .padding(.bottom, 95)
            }
            .foregroundStyle(Color("AppText"))
        }
    }
}


// MARK: - WAVE SHAPE

struct WaveShape: Shape {
    
    var control1X: CGFloat
    var control1Y: CGFloat
    var control2X: CGFloat
    var control2Y: CGFloat
    
    func path(in rect: CGRect) -> Path {
        
        var path = Path()
        
        let startY = rect.height * 0.38
        
        path.move(to: CGPoint(x: 0, y: startY))
        
        path.addCurve(
            to: CGPoint(x: rect.width, y: startY),
            control1: CGPoint(
                x: rect.width * control1X,
                y: startY + control1Y
            ),
            control2: CGPoint(
                x: rect.width * control2X,
                y: startY + control2Y
            )
        )
        
        path.addLine(to: CGPoint(x: rect.width, y: rect.height))
        path.addLine(to: CGPoint(x: 0, y: rect.height))
        path.closeSubpath()
        
        return path
    }
}
