import Foundation
import SwiftData

@Model
final class WashingModel {

    var title: String
    var sections: [CleaningSection]

    init(title: String, sections: [CleaningSection]) {
        self.title = title
        self.sections = sections
    }
}


struct CleaningSection: Codable, Hashable {

    var title: String
    var icon: String
    var steps: [String]
    var extraTip: String?

    init(
        title: String,
        icon: String,
        steps: [String],
        extraTip: String? = nil
    ) {
        self.title = title
        self.icon = icon
        self.steps = steps
        self.extraTip = extraTip
    }
}
