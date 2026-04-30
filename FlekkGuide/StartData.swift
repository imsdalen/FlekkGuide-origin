//
//  StartData.swift
//  FlekkGuide
//

import SwiftData

func startData(context: ModelContext) {
  let cotton = Fabric(name: "Bomull", isFurnitureFabric: true)
  let silk = Fabric(name: "Silke", isFurnitureFabric: false)
  let wool = Fabric(name: "Ull", isFurnitureFabric: true)
  let linen = Fabric(name: "Lin", isFurnitureFabric: false)
  let polyester = Fabric(name: "Polyester", isFurnitureFabric: true)

  let redwine = Stain(name: "Rødvin")
  let berries = Stain(name: "Bær")
  let coffeeOrTea = Stain(name: "Kaffe eller te")
  let blood = Stain(name: "Blod")
  let fat = Stain(name: "Fett")
  let oil = Stain(name: "Olje")
  let tomato = Stain(name: "Tomat")
  let soya = Stain(name: "Soya")
  let toothpaste = Stain(name: "Tannkrem")
  let greenery = Stain(name: "Grønske")
  
  let fabrics = [cotton, silk, wool, linen, polyester]
  let stains = [redwine, berries, coffeeOrTea, blood, fat, oil, tomato, soya, toothpaste, greenery]
  
  for stain in stains {
    for fabric in fabrics {
      if fabric.isFurnitureFabric {
        context.insert(Guide(stain: stain, fabric: fabric, isFurnitureTip: false, instructions: "..."))
        context.insert(Guide(stain: stain, fabric: fabric, isFurnitureTip: true, instructions: "..."))
      } else {
        context.insert(Guide(stain: stain, fabric: fabric, isFurnitureTip: false, instructions: "..."))
      }
    }
  }
  
  let bathroom = WashingGuide(
    title: "Bad",
    tips: [
        "Bruk eddik for å fjerne kalk",
        "Vask speil med mikrofiberklut",
        "Rengjør toalett ukentlig"
    ]
  )
  
  let kitchen = WashingGuide(
    title: "Kjøkken",
    tips: [
        "Tørk benkeplater daglig!!",
        "Rens ovnen jevnlig",
        "Vask kjøleskap hver uke"
    ]
  )
  
  let bedroom = WashingGuide(
    title: "Soverom",
    tips: [
        "Bytt på sengen",
        "Luft dynetrekk"
    ]
  )
  
  let livingroom = WashingGuide(
    title: "Stue",
    tips: [
        "Bytt på sengen",
        "Luft dynetrekk"
    ]
  )

  context.insert(bathroom)
  context.insert(kitchen)
  context.insert(bedroom)
  context.insert(livingroom)
}

