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
            Color("AppBackground")
                .ignoresSafeArea()
            
            HomeView()
                .foregroundColor(Color("AppText"))
        }
    }
}
