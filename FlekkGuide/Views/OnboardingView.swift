//
//  OnboardingView.swift
//  FlekkGuide
//

import SwiftUI

struct OnboardingView: View {
  @AppStorage("hasSeenOnboarding") private var hasSeenOnboarding = false
  @State private var currentStep = 0
  
  let steps = [
    ("Velkommen til Flekk", "Din guide til å fjerne flekker og holde hjemmet rent."),
    ("Flekkguide", "Konkrete tips til din flekk"),
    ("Vasketips", "Generelle vasketips til ditt hjem")
  ]
  
  var body: some View {
    ZStack {
      Color("AppBackground").ignoresSafeArea()
      
      VStack(spacing: 0) {
        
        Spacer()
        
        VStack(spacing: 16) {
          Text(steps[currentStep].0)
            .font(.system(size: 32, weight: .bold, design: .rounded))
            .multilineTextAlignment(.center)
          
          Text(steps[currentStep].1)
            .font(.system(size: 17))
            .foregroundStyle(.secondary)
            .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 32)
        
        Spacer()
        
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
            ButtonView(title: "Fullfør") {
              hasSeenOnboarding = true
            }
          }
        }
        .padding(.horizontal, 20)
        .padding(.bottom, 48)
      }
      .foregroundColor(Color("AppText"))
    }
  }
}
