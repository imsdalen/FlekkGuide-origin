//
//  StainModel.swift
//  FlekkGuide
//

import Foundation
import SwiftData

@Model
final class Stain {
    var id: UUID
    var name: String
    var imageName: String
    var tip: String
    
  init(name: String, imageName: String, tip: String = "") {
        self.id = UUID()
        self.name = name
        self.imageName = imageName
        self.tip = tip
    }
}
