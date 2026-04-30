import Foundation
import SwiftData

@Model
class WashingGuide {
    var title: String
    var tips: [String]
    
    init(title: String, tips: [String]) {
        self.title = title
        self.tips = tips
    }
}
