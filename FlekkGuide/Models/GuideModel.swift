//
//  GuideModel.swift
//  FlekkGuide
//

import Foundation
import SwiftData

@Model
final class Guide {
  var id: UUID
  var isFurnitureTip: Bool
  var instructions: String
  
  var stain: Stain
  var fabric: Fabric
  
  init(stain: Stain, fabric: Fabric, isFurnitureTip: Bool, instructions: String) {
    self.id = UUID()
    self.stain = stain
    self.fabric = fabric
    self.isFurnitureTip = isFurnitureTip
    self.instructions = instructions
    
    struct GuideModel: Identifiable {
        let id = UUID()
        let title: String
        let steps: [String]
    }
  }
}
