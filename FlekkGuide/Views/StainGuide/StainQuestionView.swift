//
//  StainQuestionView.swift
//  FlekkGuide
//

import SwiftUI
import SwiftData

struct StainQuestionView: View {
    
    let stain: Stain
    
    @Query private var fabrics: [Fabric]
    @Query private var guides: [Guide]
    
    @State private var step: Int = 1
    @State private var isFurniture: Bool? = nil
    @State private var selectedFabric: Fabric? = nil
    
    var relevantFabrics: [Fabric] {
        guard let isFurniture else { return [] }
        return isFurniture ? fabrics.filter { $0.isFurnitureFabric } : fabrics
    }
    
    var matchingGuide: Guide? {
        guard let isFurniture, let selectedFabric else { return nil }
        return guides.first {
            $0.stain.name == stain.name &&
            $0.fabric.name == selectedFabric.name &&
            $0.isFurnitureTip == isFurniture
        }
    }
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 32) {
                
                if step == 1 {
                    // Spørsmål 1
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Spørsmål 1 av 2")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        
                        Text("Hva har du sølt på?")
                            .font(.system(size: 26, weight: .bold, design: .rounded))
                        
                        VStack(spacing: 12) {
                            let isClothing = isFurniture == false
                            Button {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                    isFurniture = false
                                    selectedFabric = nil
                                }
                            } label: {
                                HStack {
                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("Plagg eller tekstil")
                                            .font(.system(size: 16, weight: .semibold))
                                            .foregroundStyle(isClothing ? .white : .primary)
                                        Text("T-skjorte, duk, sengetøy...")
                                            .font(.system(size: 13))
                                            .foregroundStyle(isClothing ? .white.opacity(0.7) : .secondary)
                                    }
                                    Spacer()
                                    if isClothing {
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundStyle(.white)
                                    }
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 14)
                                .background(isClothing ? Color(.label) : Color(.secondarySystemBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            }
                            
                            let isFurnitureSelected = isFurniture == true
                            Button {
                                withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                    isFurniture = true
                                    selectedFabric = nil
                                }
                            } label: {
                                HStack {
                                    VStack(alignment: .leading, spacing: 3) {
                                        Text("Møbel eller teppe")
                                            .font(.system(size: 16, weight: .semibold))
                                            .foregroundStyle(isFurnitureSelected ? .white : .primary)
                                        Text("Sofa, teppe, pute...")
                                            .font(.system(size: 13))
                                            .foregroundStyle(isFurnitureSelected ? .white.opacity(0.7) : .secondary)
                                    }
                                    Spacer()
                                    if isFurnitureSelected {
                                        Image(systemName: "checkmark")
                                            .font(.system(size: 14, weight: .semibold))
                                            .foregroundStyle(.white)
                                    }
                                }
                                .padding(.horizontal, 16)
                                .padding(.vertical, 14)
                                .background(isFurnitureSelected ? Color(.label) : Color(.secondarySystemBackground))
                                .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                            }
                        }
                    }
                    
                    if isFurniture != nil {
                        ButtonView(title: "Neste") {
                            withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                                step = 2
                            }
                        }
                        .transition(.opacity)
                    }
                }
                
                if step == 2 {
                    // Spørsmål 2
                    VStack(alignment: .leading, spacing: 16) {
                        Text("Spørsmål 2 av 2")
                            .font(.footnote)
                            .foregroundStyle(.secondary)
                        
                        Text("Hvilket stoff er det?")
                            .font(.system(size: 26, weight: .bold, design: .rounded))
                        
                        VStack(spacing: 12) {
                            ForEach(relevantFabrics) { fabric in
                                let isSelected = selectedFabric?.name == fabric.name
                                
                                Button {
                                    withAnimation(.spring(response: 0.3, dampingFraction: 0.7)) {
                                        selectedFabric = fabric
                                    }
                                } label: {
                                    HStack {
                                        Text(fabric.name)
                                            .font(.system(size: 16, weight: .semibold))
                                            .foregroundStyle(isSelected ? .white : .primary)
                                        Spacer()
                                        if isSelected {
                                            Image(systemName: "checkmark")
                                                .font(.system(size: 14, weight: .semibold))
                                                .foregroundStyle(.white)
                                        }
                                    }
                                    .padding(.horizontal, 16)
                                    .padding(.vertical, 14)
                                    .background(isSelected ? Color(.label) : Color(.secondarySystemBackground))
                                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                                }
                            }
                        }
                    }
                    .transition(.move(edge: .trailing).combined(with: .opacity))
                    
                  // Knapper
                  HStack(spacing: 12) {
                      ButtonView(title: "Forrige", style: .secondary) {
                          withAnimation(.spring(response: 0.4, dampingFraction: 0.8)) {
                              step = 1
                          }
                      }
                      
                      if let guide = matchingGuide {
                          NavigationLink(destination: StainDetailView(guide: guide)) {
                              Text("Se flekkguide")
                                  .font(.system(size: 17, weight: .semibold))
                                  .foregroundStyle(Color(.systemBackground))
                                  .frame(maxWidth: .infinity)
                                  .padding(.vertical, 16)
                                  .background(Color(.label))
                                  .clipShape(RoundedRectangle(cornerRadius: 14, style: .continuous))
                          }
                          .transition(.opacity)
                      }
                  }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 24)
        }
        .navigationTitle(stain.name)
        .navigationBarTitleDisplayMode(.large)
    }
}
