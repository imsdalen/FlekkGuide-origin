import SwiftUI

struct WashingDetailView: View {
    
    let guide: WashingModel
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading, spacing: 20) {

                
                ForEach(guide.sections, id: \.self) { section in
                    
                    VStack(alignment: .leading, spacing: 16) {
                        
                        HStack(spacing: 10) {
                            
                            Image(systemName: section.icon)
                                .foregroundStyle(Color("AppText"))
                                .font(.headline)
                            
                            Text(section.title)
                                .font(.headline)
                                .fontWeight(.semibold)
                        }
                        
                        VStack(alignment: .leading, spacing: 14) {
                            
                            ForEach(section.steps.indices, id: \.self) { index in
                                
                                HStack(alignment: .top, spacing: 12) {
                                    
                                    Text("\(index + 1)")
                                        .font(.subheadline.bold())
                                        .foregroundStyle(Color("AppText"))
                                        .frame(width: 24, height: 24)
                                        .background(Color("AppPrimary").opacity(0.15))
                                        .clipShape(Circle())
                                    
                                    Text(section.steps[index])
                                        .fixedSize(horizontal: false, vertical: true)
                                    
                                    Spacer()
                                }
                            }
                        }
                        
                        if let extraTip = section.extraTip {
                            
                            HStack(alignment: .top, spacing: 10) {
                                
                                Image(systemName: "lightbulb.fill")
                                    .foregroundStyle(.yellow)
                                
                                Text(extraTip)
                                    .font(.subheadline)
                                    .fixedSize(horizontal: false, vertical: true)
                            }
                            .padding()
                            .background(Color.yellow.opacity(0.15))
                            .clipShape(RoundedRectangle(cornerRadius: 14))
                        }
                    }
                    .foregroundStyle(Color("AppText"))
                    .padding(20)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.white.opacity(0.9))
                    .clipShape(RoundedRectangle(cornerRadius: 24))
                    .shadow(color: .black.opacity(0.04), radius: 10, y: 4)
                }
            }
            .padding(.horizontal)
            .padding(.top)
            .padding(.bottom, 40)
        }
        .background(Color("AppBackground"))
        .navigationTitle(guide.title)
        .navigationBarTitleDisplayMode(.inline)
    }
}
