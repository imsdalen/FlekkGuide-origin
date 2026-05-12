import SwiftUI

struct WashingCardView: View {
    
    let title: String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 14) {
            
            // IKON
            Image(systemName: iconName)
                .font(.system(size: 26))
                .foregroundStyle(Color("AppText"))
            
            // TEKST
            VStack(alignment: .leading, spacing: 4) {
                
                Text(title)
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundStyle(.black)
                
                Text(subtitle)
                    .font(.subheadline)
                    .foregroundStyle(.gray)
            }
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding(24)
        .background(Color.white.opacity(0.88))
        .clipShape(RoundedRectangle(cornerRadius: 28))
    }
    
    
    // MARK: - IKONER
    
    private var iconName: String {
        switch title {
        case "Stue":
            return "sofa.fill"
            
        case "Kjøkken":
            return "fork.knife"
            
        case "Bad":
            return "shower.fill"
            
        case "Soverom":
            return "bed.double.fill"
            
        default:
            return "house.fill"
        }
    }
    
    
    // MARK: - UNDERTITLER
    
    private var subtitle: String {
        switch title {
        case "Stue":
            return "Tips for rengjøring av stue"
            
        case "Kjøkken":
            return "Hold kjøkkenet rent og ryddig"
            
        case "Bad":
            return "Rengjøring og vedlikehold av bad"
            
        case "Soverom":
            return "Skap et rent og behagelig soverom"
            
        default:
            return "Generelle vasketips"
        }
    }
}
