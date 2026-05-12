//
//  SettingView.swift
//  FlekkGuide
//

import SwiftUI

struct SettingView: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            
          
            // MARK: - Om oss
            VStack(alignment: .leading, spacing: 8) {
                Text("Om oss")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                
              Text("""
              FlekkGuide ble utviklet som en del av vår bacheloroppgave med mål om å gjøre flekkfjerning enklere, tryggere og mer tilgjengelig for alle.

              Appen er en objektiv og produktuavhengig flekkguide, basert på erfaring og praktiske råd – ikke reklame. Målet er å gi raske, enkle og pålitelige anbefalinger når uhellet først skjer.

              Vi håper FlekkGuide gjør hverdagen litt enklere, og hjelper flere med å ta vare på tekstilene sine på en trygg og bærekraftig måte.
              """)
              .font(.system(size: 15))
              .foregroundStyle(.secondary)
              .lineSpacing(4)
              .padding(.bottom, 20)
            
              
              Text("Utviklet av studenter ved Kristiania").fontWeight(.bold)
              Text("Alle rettigheter tilhører ©TeppeRent")
              Text("Versjon 1.0.0")
                .foregroundStyle(.secondary)
              


            }
            
            Spacer()
            
            // Footer
            Text("©TeppeRent")
                .font(.footnote)
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top, 50)
                .padding(.bottom, 24)
        }
        .padding(.horizontal, 20)
        .padding(.top, 24)
        .navigationTitle("Innstillinger")
        .navigationBarTitleDisplayMode(.inline)
    }
}
