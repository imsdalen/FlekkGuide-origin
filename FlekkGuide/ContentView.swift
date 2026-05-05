//
//  ContentView.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var stains: [Stain]
  
    var body: some View {
        ZStack {
            // 🔹 Bakgrunn (hele appen)
            Color("AppBackground")
                .ignoresSafeArea()
            
            // 🔹 Din startview
            HomeView()
                .foregroundColor(Color("AppText"))
        }
    }
}
