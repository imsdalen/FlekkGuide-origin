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
                
                // MARK: STEP 1
                if step == 1 {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("Spørsmål 1 av 2")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        Text("Hva har du sølt på?")
                            .font(.system(size: 26, weight: .bold, design: .rounded))
                            .foregroundColor(Color("AppText"))
                        
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
                                            .foregroundColor(isClothing ? .white : Color("AppText"))
                                        
                                        Text("T-skjorte, duk, sengetøy...")
                                            .font(.system(size: 13))
                                            .foregroundColor(isClothing ? .white.opacity(0.7) : Color("AppText").opacity(0.6))
                                    }
                                    
                                    Spacer()
                                    
                                    if isClothing {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(16)
                                .background(isClothing ? Color("AppText") : Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .shadow(color: .black.opacity(0.05), radius: 4, y: 2)
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
                                            .foregroundColor(isFurnitureSelected ? .white : Color("AppText"))
                                        
                                        Text("Sofa, teppe, pute...")
                                            .font(.system(size: 13))
                                            .foregroundColor(isFurnitureSelected ? .white.opacity(0.7) : Color("AppText").opacity(0.6))
                                    }
                                    
                                    Spacer()
                                    
                                    if isFurnitureSelected {
                                        Image(systemName: "checkmark")
                                            .foregroundColor(.white)
                                    }
                                }
                                .padding(16)
                                .background(isFurnitureSelected ? Color("AppText") : Color.white)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .shadow(color: .black.opacity(0.05), radius: 4, y: 2)
                            }
                        }
                    }
                    
                    if isFurniture != nil {
                        ButtonView(title: "Neste") {
                            withAnimation {
                                step = 2
                            }
                        }
                    }
                }
                
                // MARK: STEP 2
                if step == 2 {
                    VStack(alignment: .leading, spacing: 16) {
                        
                        Text("Spørsmål 2 av 2")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                        
                        Text("Hvilket stoff er det?")
                            .font(.system(size: 26, weight: .bold, design: .rounded))
                            .foregroundColor(Color("AppText"))
                        
                        VStack(spacing: 12) {
                            ForEach(relevantFabrics) { fabric in
                                let isSelected = selectedFabric?.name == fabric.name
                                
                                Button {
                                    withAnimation {
                                        selectedFabric = fabric
                                    }
                                } label: {
                                    HStack {
                                        Text(fabric.name)
                                            .foregroundColor(isSelected ? .white : Color("AppText"))
                                        
                                        Spacer()
                                        
                                        if isSelected {
                                            Image(systemName: "checkmark")
                                                .foregroundColor(.white)
                                        }
                                    }
                                    .padding(16)
                                    .background(isSelected ? Color("AppText") : Color.white)
                                    .clipShape(RoundedRectangle(cornerRadius: 12))
                                    .shadow(color: .black.opacity(0.05), radius: 4, y: 2)
                                }
                            }
                        }
                    }
                    
                    // MARK: BUTTONS
                    HStack(spacing: 12) {
                        
                        ButtonView(title: "Forrige", style: .secondary) {
                            step = 1
                        }
                        
                        if let guide = matchingGuide {
                            NavigationLink(destination: StainDetailView(guide: guide)) {
                                Text("Se flekkguide")
                                    .foregroundColor(.white)
                                    .frame(maxWidth: .infinity)
                                    .padding(.vertical, 16)
                                    .background(Color("AppText"))
                                    .clipShape(RoundedRectangle(cornerRadius: 14))
                            }
                        }
                    }
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 24)
        }
        .background(Color("AppBackground"))
        .navigationTitle(stain.name)
        .navigationBarTitleDisplayMode(.large)
    }
}
