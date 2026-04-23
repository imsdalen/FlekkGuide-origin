//
//  HomeView.swift
//  FlekkGuide
//


import SwiftUI

struct HomeView: View {
    var body: some View {
      
      NavigationStack {
        
        ZStack(alignment: .top) {
          Color(.systemBackground).ignoresSafeArea()
          
          // header
          VStack(spacing: 0) {
            // bytte ut med logo
            VStack {
              Text("Flekk")
                .font(.system(size: 42, weight: .bold, design: .rounded))
            }
            .frame(maxWidth: .infinity)
            .padding(.top, 35)
            .padding(.bottom, 75)
            
            //kort
            VStack(spacing: 16) {
              NavigationLink(destination: StainGuideView()) {
                HomeCardView(
                  title: "Flekkguide",
                  subtitle: "Finn riktig behandling for flekken din",
                  icon: "drop.triangle.fill",
                  color: Color(.label)
                )
              }
              
              NavigationLink(destination: WashingGuideView()) {
                HomeCardView(
                  title: "Vasketips",
                  subtitle: "Generelle vasketips til hjemmet",
                  icon: "bubbles.and.sparkles",
                  color: Color(.label)
                )
              }
            }
            .padding(.horizontal)
            
            Spacer()
            
            
            // footer
            Text("En ide av TeppeRent")
              .font(.footnote)
              .foregroundStyle(.secondary)
              .padding(.bottom, 24)
          }
        }
        
        // setting
        .toolbar {
          ToolbarItem(placement: .topBarTrailing) {
            NavigationLink(destination: SettingView()) {
              Image(systemName: "gearshape")
                .foregroundStyle(.primary)
            }
          }
        }
      }
    }
}

#Preview {
    HomeView()
}
