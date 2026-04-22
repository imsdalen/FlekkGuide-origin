//
//  FabricModel.swift
//  FlekkGuide
//

import Foundation
import SwiftData

@Model
final class Fabric {
  var id: UUID
  var name: String
  var isFurnitureFabric: Bool
  
  init(name: String, isFurnitureFabric: Bool) {
    self.id = UUID()
    self.name = name
    self.isFurnitureFabric = isFurnitureFabric
  }
}
