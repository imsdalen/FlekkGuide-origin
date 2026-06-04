//
//  StartData.swift
//  FlekkGuide
//

import SwiftData

func startData(context: ModelContext) {
    
    // STOFFER
    
    // true = kan brukes på møbler/tepper
    // false = kun klær/tekstil
    
    let cotton = Fabric(name: "Bomull", isFurnitureFabric: true)
    let silk = Fabric(name: "Silke", isFurnitureFabric: false)
    let wool = Fabric(name: "Ull", isFurnitureFabric: true)
    let linen = Fabric(name: "Lin", isFurnitureFabric: false)
    let polyester = Fabric(name: "Polyester", isFurnitureFabric: true)
    
    
    // FLEKKER
    
    let redwine = Stain(name: "Rødvin", imageName: "vin",tip: "Bruk alltid kaldt vann først. Salt, potetmel eller kullsyrevann kan hjelpe med å trekke opp væsken før flekken setter seg.")
    let berries = Stain(name: "Bær", imageName: "baer", tip: "")
    let coffeeOrTea = Stain(name: "Kaffe og te", imageName: "kaffe", tip: "")
    let blood = Stain(name: "Blod", imageName: "blod", tip: "Bruk alltid kaldt vann, varmt vann “koker” proteinet og setter flekken. Salt kan hjelpe å bryte ned flekken!")
    let fatAndOil = Stain(name: "Fett og olje", imageName: "fett", tip: "Oppvaskmiddel er ofte det mest effektive mot fettflekker. Behandle flekken før vask for best resultat.")
    let sunscreen = Stain(name: "Solkrem", imageName: "solkrem", tip: "Solkrem inneholder ofte fett og oljer som kan gi gule skjolder. Behandle flekken raskt og unngå klor.")
    let tomato = Stain(name: "Tomat", imageName: "tomat", tip: "")
    let soyasaus = Stain(name: "Soyasaus", imageName: "soyasaus", tip: "Soyasaus kan gi mørke misfarginger. Behandle flekken så raskt som mulig for best resultat.")
    let toothpaste = Stain(name: "Tannkrem", imageName: "tannkrem", tip: "La tannkremen tørke først. Da blir den lettere å børste bort før vask.")
    let greenery = Stain(name: "Grønske", imageName: "gronske", tip: "Grønske inneholder sterke pigmenter. Sprit eller eddik kan hjelpe med å løse opp misfargingen.")
    
    
    // STOFFER
    
    context.insert(cotton)
    context.insert(silk)
    context.insert(wool)
    context.insert(linen)
    context.insert(polyester)
    
    
    // FLEKKER
    
    context.insert(redwine)
    context.insert(berries)
    context.insert(coffeeOrTea)
    context.insert(blood)
    context.insert(fatAndOil)
    context.insert(sunscreen)
    context.insert(tomato)
    context.insert(soyasaus)
    context.insert(toothpaste)
    context.insert(greenery)
  
  // =========================================================
  // MARK: - RØDVIN
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: redwine,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Strekk stoffet over en bolle eller vask.
          
          2. Hell kokende vann gjennom flekken fra baksiden.
          
          3. Påfør natronpasta eller sitronsåpe og la det virke noen minutter.
          
          4. Vask som anvist.

          Vanskelige flekker kan bløtlegges i melk.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Dabb forsiktig med tørkepapir for å trekke opp mest mulig væske.
          
          2. Påfør litt kullsyrevann på en ren klut eller papir.
          
          3. Bruk eventuelt en mild blanding av Zalo og vann, eller 1 del eddik og 3 deler vann.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          **⚠️OBS!**
          Ikke gni på silke, da stoffet lett kan bli skadet.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Spray tørrsjampo på flekken og la det tørke.
          
          2. Børst forsiktig bort produktet når det er tørt.
          
          3. Ved behov kan du duppe litt kullsyrevann på flekken.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Unngå å gni på ull, da stoffet kan tove seg.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Bland litt Zalo med kaldt vann og påfør flekken.
          
          2. Dabb forsiktig med en ren klut.
          
          3. Du kan også bruke kullsyrevann eller bløtlegge plagget i melk i noen timer.
          
          4. Vask som anvist.

          **⚠️OBS!**
          Unngå tørketrommel før flekken er helt borte.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Bland Zalo, litt eddik og kaldt vann.
          
          2. Påfør blandingen forsiktig på flekken.
          
          3. Dabb med en ren klut eller bruk litt kullsyrevann ved behov.
          
          4. Vask som vanlig.

          **⚠️OBS!**
          Ikke bruk salt på polyester, og unngå å gni på flekken.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: redwine,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med en ren klut og kaldt vann.
          
          2. Bruk eventuelt en blanding av vann og eddik på flekken.
          
          3. Strø salt eller potetmel over flekken for å trekke opp væsken.
          
          4. La det tørke før du støvsuger bort restene.

          **⚠️OBS!**
          Unngå å gni på flekken, da den kan trekke dypere inn i stoffet.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Spray tørrsjampo eller strø potetmel på flekken.
          
          2. La det tørke helt før du støvsuger området.
          
          3. Ved vanskelige flekker kan du bruke litt natronpasta eller Zalo.
          
          4. Tørk forsiktig av med en fuktig klut.

          **⚠️OBS!**
          Ikke bruk for mye vann på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: redwine,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med kaldt vann og litt Zalo.
          
          2. Påfør eventuelt natronpasta eller litt salt sammen med kullsyrevann.
          
          3. La det virke noen minutter.
          
          4. Tørk av med en ren klut og kaldt vann.

          **⚠️OBS!**
          Unngå å skrubbe stoffet for hardt.
          """
      )
  )

  // =========================================================
  // MARK: - BÆR
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: berries,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Strekk stoffet over en bolle eller vask.
          
          2. Hell kokende vann gjennom flekken fra baksiden for å løse opp pigmentene.
          
          3. Påfør flytende vaskemiddel eller sitronsåpe.
          
          4. Vask som anvist.

          Vanskelige flekker kan bløtlegges i melk eller kulturmelk før vask.
          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig fra baksiden med kaldt eller lunkent vann.
          
          2. Påfør litt flytende Milo eller mild såpe.
          
          3. La det virke i cirka 30 minutter.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          Melk kan brukes til å bløtlegge vanskelige flekker.
          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Unngå kokende vann på ull.
          
          2. Skyll flekken forsiktig fra baksiden med lunkent vann.
          
          3. Bløtlegg eventuelt plagget i surmelk.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Ikke gni på ullstoffet, da det kan tove seg.
          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann.
          
          2. Påfør sitronsåpe og la det virke i 15–30 minutter.
          
          3. Du kan også bruke litt sitronsaft eller bløtlegge plagget i melk.
          
          4. Vask som anvist.

          **⚠️OBS!**
          Unngå tørketrommel før flekken er helt borte.
          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Strekk stoffet over en bolle eller vask.
          
          2. Hell kokende vann gjennom flekken fra baksiden.
          
          3. Påfør Zalo eller bløtlegg plagget i surmelk ved vanskelige flekker.
          
          4. Vask som vanlig.

          La vaskemiddelet virke noen minutter før vask for best effekt.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: berries,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Fukt flekken med lunkent vann.
          
          2. Påfør sitronsåpe og la det virke i 15–30 minutter.
          
          3. Tørk forsiktig med en ren og fuktig klut.
          
          4. Gjenta ved behov.

          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Bruk aldri varmt vann på ullstoffer.
          
          2. Fukt flekken forsiktig med lunkent vann.
          
          3. Bruk eventuelt en blanding av like deler hvit eddik og vann.
          
          4. Tørk av med en ren, fuktig klut.

          **⚠️OBS!**
          Unngå å bruke for mye vann på ullmøbler og tepper.
          """
      )
  )

  context.insert(
      Guide(
          stain: berries,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Legg surmelk eller naturell yoghurt på flekken.
          
          2. La det virke i cirka 30 minutter.
          
          3. Påfør eventuelt sitronsåpe i 10–30 minutter.
          
          4. Tørk opp med en ren og fuktig klut.

          **⚠️OBS!**
          Ikke skrubb flekken, da pigmentene kan trekke dypere inn i stoffet.
          """
      )
  )


  // =========================================================
  // MARK: - SOLKREM
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Påfør Zalo direkte på tørr flekk.
          
          2. Masser forsiktig inn og la det virke i cirka 30 minutter.
          
          3. Skyll med kaldt vann.
          
          4. Vask som anvist.

          Sitronsåpe og bløtlegging i lunkent vann kan hjelpe på vanskelige flekker.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Bland 1 del eddik med 3 deler lunkent vann.
          
          2. Dabb forsiktig på flekken med en ren klut.
          
          3. Påfør eventuelt litt Zalo og masser forsiktig inn.
          
          4. Skyll med kaldt eller lunkent vann og vask på skånsomt program.

          Natron eller maisstivelse kan brukes på ferske flekker for å trekke ut oljen.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Påfør litt Zalo direkte på den tørre flekken.
          
          2. Masser forsiktig med fingertuppene uten å gni hardt.
          
          3. La det virke i 15–30 minutter.
          
          4. Skyll med lunkent vann og vask på ullprogram.

          Sitronsåpe kan brukes ved vanskelige flekker.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Påfør Zalo direkte på flekken.
          
          2. Skyll med kaldt vann etter 20–60 minutter.
          
          3. Bruk eventuelt sitronsåpe eller en blanding av eddik og vann.
          
          4. Vask som anvist.

          Natronpasta kan hjelpe mot vanskelige skjolder.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Påfør Zalo direkte på flekken.
          
          2. La det virke i 30–60 minutter.
          
          3. Skyll med lunkent vann.
          
          4. Vask som vanlig.
          
          Natron kan brukes på ferske flekker for å absorbere oljen.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Bland noen dråper Zalo med lunkent vann og lag skum.
          
          2. Påfør skummet forsiktig med en klut.
          
          3. Dabb flekken uten å gni.
          
          4. Tørk av med en ren og fuktig klut.

          Natron eller potetmel kan brukes på ferske flekker før rengjøring.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Lag skum av Zalo og vann.
          
          2. Påfør kun skummet på flekken med en klut.
          
          3. La det virke i cirka 10 minutter.
          
          4. Tørk forsiktig av med en ren, fuktig klut.

          **⚠️OBS!**
          Bruk minst mulig vann på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: sunscreen,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Bland Zalo og lunkent vann til skum.
          
          2. Påfør skummet på flekken med en klut.
          
          3. La det virke i cirka 15 minutter.
          
          4. Tørk av med en ren og fuktig klut.

          Litt håndsprit på en klut kan hjelpe mot vanskelige flekker.
          """
      )
  )


  // =========================================================
  // MARK: - FETT OG OLJE
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Fjern mest mulig fett med tørkepapir.
          
          2. Påfør Zalo direkte på flekken.
          
          3. La det virke i 15–30 minutter.
          
          4. Skyll med varmt vann og vask som normalt.

          Tips:
          Natron, bakepulver eller potetmel kan brukes først for å trekke ut fettet.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll forsiktig med lunkent vann.
          
          2. Påfør litt Zalo eller sitronsåpe.
          
          3. Jobb forsiktig inn uten å gni.
          
          4. Skyll godt og vask på skånsomt program.

          **⚠️OBS!**
          Ikke bruk varmt vann eller skrubb silke.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Bruk lunkent vann på flekken.
          
          2. Påfør en mild Zalo-blanding og la den virke i opptil 2 timer.
          
          3. Skyll forsiktig med lunkent vann.
          
          4. Vask på ullprogram.

          Tips:
          Potetmel kan brukes først for å trekke ut fett fra stoffet.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med lunkent vann.
          
          2. Påfør Zalo eller sitronsåpe direkte på flekken.
          
          3. La det virke før du skyller.
          
          4. Vask som anvist.

          Tips:
          Potetmel kan brukes først på ferske flekker for å absorbere olje.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Påfør Zalo direkte på flekken.
          
          2. La det virke i minst 30 minutter.
          
          3. Skyll med lunkent vann.
          
          4. Vask som vanlig.

          Tips:
          Natron eller potetmel kan brukes for å absorbere fett før vask.
          
          **⚠️OBS!**
          Unngå for høy varme på polyester.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Fjern fett med tørkepapir uten å gni.
          
          2. Strø natron, bakepulver eller potetmel over flekken.
          
          3. La det virke i 15–20 minutter før du støvsuger.
          
          4. Dabb eventuelt med en blanding av Zalo, eddik og varmt vann.

          Tips:
          Tørk alltid av med en ren og fuktig klut etter behandling.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Strø natron, bakepulver eller potetmel på flekken.
          
          2. La det virke i 15–20 minutter og støvsug opp.
          
          3. Dabb forsiktig med en mild Zalo-blanding.
          
          4. Tørk av med en ren og fuktig klut.

          **⚠️OBS!**
          Ikke bruk for mye vann på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: fatAndOil,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Strø natron, bakepulver eller potetmel på flekken.
          
          2. La det virke i cirka 20 minutter og støvsug opp.
          
          3. Bruk eventuelt en blanding av Zalo og vann på området.
          
          4. Tørk av med en ren og fuktig klut.

          Tips:
          Litt eddik blandet med vann kan hjelpe mot fettrester.
          """
      )
  )


  // =========================================================
  // MARK: - SOYASAUS
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken fra baksiden med kaldt vann.
          
          2. Påfør oppvaskmiddel eller gallesåpe direkte på flekken.
          
          3. La det virke i 10–15 minutter.
          
          4. Vask som normalt.

          Tips:
          Litt eddik blandet med vann kan hjelpe mot misfarging.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll forsiktig i kaldt vann.
          
          2. Påfør mild såpe uten å gni på stoffet.
          
          3. Skyll forsiktig og vask på skånsomt program.
          
          4. La plagget lufttørke.

          **⚠️OBS!**
          Silke er sensitivt for sterke rengjøringsmidler.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig med kaldt vann.
          
          2. Bruk en liten mengde mildt oppvaskmiddel ved behov.
          
          3. Skyll godt med kaldt vann.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Unngå varmt vann og hard skrubbing på ull.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken raskt med kaldt vann.
          
          2. Påfør oppvaskmiddel eller gallesåpe direkte på flekken.
          
          3. Ved vanskelige flekker kan litt sitronsaft hjelpe mot misfarging.
          
          4. Vask som anvist.

          Tips:
          Litt sollys kan hjelpe naturlig på lyse linklær.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann.
          
          2. Påfør oppvaskmiddel direkte på flekken.
          
          3. La det virke noen minutter før vask.
          
          4. Vask som vanlig.

          Tips:
          Litt eddik kan hjelpe med å fjerne lukt og rester.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med kaldt vann og litt oppvaskmiddel.
          
          2. Bruk en ren klut og trykk forsiktig på området.
          
          3. Ved ferske flekker kan litt salt trekke ut væsken.
          
          4. Tørk av med en ren og fuktig klut.

          Tips:
          Litt sitronsaft kan hjelpe mot misfarging på lyse stoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb forsiktig med kaldt vann.
          
          2. Strø eventuelt litt potetmel eller maismel på ferske flekker.
          
          3. Press forsiktig med en ren klut.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Ikke gni på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: soyasaus,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med lunkent vann og mild såpe.
          
          2. Bruk eventuelt litt eddikvann ved vanskelige flekker.
          
          3. Tørk forsiktig med en ren klut.
          
          4. Gjenta ved behov.

          Tips:
          Litt salt kan brukes først på ferske flekker.
          """
      )
  )
    
    
    // =========================================================
    // MARK: - GRØNSKE
    // =========================================================
    
    
    // KLÆR
    
  context.insert(
      Guide(
          stain: greenery,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Påfør oppvaskmiddel eller vaskemiddel direkte på flekken.
          
          2. Jobb det forsiktig inn med litt vann.
          
          3. Ved vanskelige flekker kan litt håndsprit eller eddik brukes.
          
          4. Vask som normalt.

          **⚠️OBS!**
          Ikke skyll kun med vann først, da flekken kan sette seg.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Dabb forsiktig med kaldt vann og mild såpe.
          
          2. Skyll forsiktig uten å gni på stoffet.
          
          3. Ved vanskelige flekker kan svært lite sprit brukes på en klut.
          
          4. Vask på skånsomt program.

          **⚠️OBS!**
          Silke tåler dårlig sterke rengjøringsmidler og hard behandling.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Påfør mild såpe direkte på flekken.
          
          2. Skyll forsiktig med kaldt vann.
          
          3. Ved behov kan litt sprit brukes svært forsiktig på en klut.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Ikke skrubb ullstoffet.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Påfør oppvaskmiddel eller vaskemiddel direkte på flekken.
          
          2. La det virke noen minutter.
          
          3. Ved vanskelige flekker kan litt eddik eller sitronsaft brukes.
          
          4. Vask som anvist.

          Tips:
          Behandle flekken raskt for best resultat.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Påfør oppvaskmiddel direkte på flekken.
          
          2. Jobb det forsiktig inn med litt vann.
          
          3. Ved vanskelige flekker kan litt sprit eller eddik brukes.
          
          4. Vask som vanlig.

          Tips:
          La vaskemiddelet virke noen minutter før vask.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: greenery,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med oppvaskmiddel og litt vann.
          
          2. Bruk en ren klut og trykk forsiktig på området.
          
          3. Ved vanskelige flekker kan litt sprit brukes på kluten.
          
          4. Tørk av med en ren og fuktig klut.

          **⚠️OBS!**
          Ikke gni hardt, da flekken kan trekke dypere inn i stoffet.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb forsiktig med kaldt vann og mild såpe.
          
          2. Bruk eventuelt svært lite sprit på en klut ved vanskelige flekker.
          
          3. Press forsiktig mot området uten å skrubbe.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Ull tåler lite vann og hard behandling.
          """
      )
  )

  context.insert(
      Guide(
          stain: greenery,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med oppvaskmiddel og vann.
          
          2. Bruk eventuelt litt sprit på en klut ved vanskelige flekker.
          
          3. Tørk forsiktig med en ren og fuktig klut.
          
          4. Gjenta ved behov.

          Tips:
          Ikke bruk for mye væske på møbelstoffet.
          """
      )
  )
    
    
    // =========================================================
    // MARK: - TANNKREM
    // =========================================================
    
    
    // KLÆR
    
  context.insert(
      Guide(
          stain: toothpaste,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt eller lunkent vann.
          
          2. Påfør vaskemiddel eller oppvaskmiddel direkte på flekken.
          
          3. La det virke noen minutter.
          
          4. Vask som normalt i maskin.

          Tips:
          Børst bort tørket tannkrem før du skyller flekken.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig i kaldt vann.
          
          2. Bruk mild såpe på området.
          
          3. Skyll forsiktig uten å gni.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          **⚠️OBS!**
          Silke tåler dårlig hard skrubbing.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig med kaldt vann.
          
          2. Påfør eventuelt litt mild såpe.
          
          3. Skyll godt uten å gni.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Unngå varmt vann på ull.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med vann.
          
          2. Påfør vaskemiddel direkte på området.
          
          3. La det virke noen minutter.
          
          4. Vask som normalt i maskinen.

          Tips:
          Tørket tannkrem er lettere å fjerne enn våt tannkrem.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med vann.
          
          2. Påfør vaskemiddel eller oppvaskmiddel.
          
          3. La det virke noen minutter.
          
          4. Vask som vanlig.

          Tips:
          Børst bort tørkede rester før vask for best resultat.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med en fuktig klut og litt såpe.
          
          2. Ved hvite skjolder kan du bruke litt eddikvann.
          
          3. Tørk forsiktig av området.
          
          4. Avslutt med en ren og fuktig klut.

          Tips:
          Eddikvann kan hjelpe med å løse opp mineraler fra tannkremen.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med kaldt vann.
          
          2. Bruk eventuelt en svak eddikblanding ved vanskelige flekker.
          
          3. Press forsiktig med en ren klut.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Ikke gni på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: toothpaste,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med en fuktig klut og litt oppvaskmiddel.
          
          2. Bruk eventuelt en svak eddikblanding ved hvite skjolder.
          
          3. Tørk forsiktig med en ren klut.
          
          4. Gjenta ved behov.

          Tips:
          Eddikvann kan hjelpe mot mineralrester fra tannkrem.
          """
      )
  )
    
    
  // =========================================================
  // MARK: - BLOD
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: blood,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken umiddelbart med iskaldt vann.
          
          2. Påfør mild såpe eller vaskemiddel på området.
          
          3. Ved vanskelige flekker kan du bruke salt og kaldt vann som en pasta.
          
          4. Vask på lav temperatur.

          **⚠️OBS!**
          Unngå varmt vann, da det kan gjøre flekken vanskeligere å fjerne.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken raskt i iskaldt vann.
          
          2. Påfør mild såpe forsiktig uten å gni.
          
          3. Skyll godt med kaldt vann.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          **⚠️OBS!**
          Silke tåler dårlig hard behandling og varme.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig i kaldt vann.
          
          2. Påfør eventuelt litt mild såpe.
          
          3. Skyll godt uten å gni stoffet.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Ikke bruk varmt vann på ull.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med iskaldt vann.
          
          2. Påfør vaskemiddel eller litt saltvann.
          
          3. La det virke noen minutter.
          
          4. Vask som normalt, gjerne på lav temperatur først.

          Tips:
          Behandle flekken så raskt som mulig for best resultat.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med iskaldt vann.
          
          2. Påfør oppvaskmiddel eller vaskemiddel direkte på området.
          
          3. La det virke noen minutter.
          
          4. Vask som vanlig i maskin.

          **⚠️OBS!**
          Ikke bruk varmt vann før flekken er helt borte.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: blood,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med iskaldt vann.
          
          2. Bruk litt saltvann eller mild såpe på området.
          
          3. Press forsiktig med en ren klut.
          
          4. Gjenta behandlingen flere ganger ved behov.

          **⚠️OBS!**
          Ikke gni hardt på flekken.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med kaldt vann.
          
          2. Bruk eventuelt litt saltvann ved vanskelige flekker.
          
          3. Press lett med en ren klut.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Ull tåler lite vann og hard behandling.
          """
      )
  )

  context.insert(
      Guide(
          stain: blood,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med iskaldt vann og litt såpe.
          
          2. Bruk eventuelt litt saltvann ved vanskelige flekker.
          
          3. Press forsiktig med en ren klut.
          
          4. Tørk av med en ren og fuktig klut.

          **⚠️OBS!**
          Ikke bruk varmt vann på blodflekker.
          """
      )
  )


  // =========================================================
  // MARK: - KAFFE OG TE
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann så raskt som mulig.
          
          2. Påfør vaskemiddel eller litt oppvaskmiddel direkte på flekken.
          
          3. Ved vanskelige flekker kan du bruke en blanding av eddik og vann.
          
          4. Vask som normalt i maskin.

          Tips:
          Jo raskere flekken behandles, desto lettere er den å fjerne.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig med kaldt vann.
          
          2. Bruk mild såpe på området.
          
          3. Skyll godt uten å gni.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          **⚠️OBS!**
          Ikke skrubb silke, da stoffet lett kan bli skadet.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig i kaldt vann.
          
          2. Unngå varmt vann på ull.
          
          3. Påfør eventuelt litt mild såpe.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Ull kan tove seg ved hard behandling.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken raskt med kaldt vann.
          
          2. Påfør vaskemiddel eller litt eddik på området.
          
          3. La det virke noen minutter.
          
          4. Vask som normalt i maskin.

          Tips:
          Eddik kan hjelpe mot mørke misfarginger.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann.
          
          2. Påfør litt oppvaskmiddel direkte på flekken.
          
          3. La det virke noen minutter.
          
          4. Vask som vanlig.

          Tips:
          Unngå høy varme før flekken er helt borte.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med lunkent vann og litt oppvaskmiddel.
          
          2. Bruk en ren klut og press forsiktig mot området.
          
          3. Ved vanskelige flekker kan du bruke litt eddikvann.
          
          4. Tørk av med en ren og fuktig klut.

          **⚠️OBS!**
          Ikke gni hardt på flekken, da den kan spre seg.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med kaldt vann.
          
          2. Press med en ren klut uten å gni.
          
          3. Bruk eventuelt litt mild såpe ved behov.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Bruk minst mulig vann på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: coffeeOrTea,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med lunkent vann og litt oppvaskmiddel.
          
          2. Tørk forsiktig med en ren klut.
          
          3. Skyll området med en ren og fuktig klut.
          
          4. Gjenta ved behov.

          Tips:
          Litt eddikvann kan hjelpe mot misfarging.
          """
      )
  )


  // =========================================================
  // MARK: - TOMAT
  // =========================================================


  // KLÆR

  context.insert(
      Guide(
          stain: tomato,
          fabric: cotton,
          isFurnitureTip: false,
          instructions: """
          1. Skrap bort overflødig saus eller puré.
          
          2. Skyll flekken fra baksiden med kaldt vann.
          
          3. Påfør oppvaskmiddel direkte på flekken.
          
          4. Vask som normalt.

          Tips:
          Sitronsaft, eddik eller gallesåpe kan hjelpe på vanskelige flekker.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: silk,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken raskt med kaldt vann.
          
          2. Påfør mild såpe forsiktig uten å gni.
          
          3. Skyll godt med kaldt vann.
          
          4. Vask på skånsomt program dersom vaskelappen tillater det.

          **⚠️OBS!**
          Ikke skrubb silke, da stoffet lett kan bli skadet.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: wool,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken forsiktig med kaldt vann.
          
          2. Bruk eventuelt litt mildt oppvaskmiddel.
          
          3. Skyll godt uten å gni stoffet.
          
          4. Vask på ullprogram.

          **⚠️OBS!**
          Unngå varmt vann på ull.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: linen,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann.
          
          2. Påfør oppvaskmiddel eller gallesåpe direkte på flekken.
          
          3. Ved misfarging kan litt sitronsaft hjelpe.
          
          4. Vask som normalt.

          Tips:
          Sollys kan hjelpe naturlig på lyse linklær.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: polyester,
          isFurnitureTip: false,
          instructions: """
          1. Skyll flekken med kaldt vann.
          
          2. Påfør oppvaskmiddel direkte på området.
          
          3. La det virke noen minutter.
          
          4. Vask som vanlig.

          Tips:
          Litt eddikvann kan hjelpe mot vanskelige flekker.
          """
      )
  )


  // MØBLER / TEPPER

  context.insert(
      Guide(
          stain: tomato,
          fabric: cotton,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med kaldt vann og litt oppvaskmiddel.
          
          2. Bruk en ren klut og trykk forsiktig på området.
          
          3. Ved ferske flekker kan litt salt brukes først.
          
          4. Tørk av med en ren og fuktig klut.

          Tips:
          Litt sitronsaft kan hjelpe mot misfarging på lyse stoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: wool,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken forsiktig med kaldt vann.
          
          2. Strø eventuelt litt potetmel eller maismel på ferske flekker.
          
          3. Press forsiktig med en ren klut.
          
          4. La området lufttørke.

          **⚠️OBS!**
          Ikke gni på ullstoffer.
          """
      )
  )

  context.insert(
      Guide(
          stain: tomato,
          fabric: polyester,
          isFurnitureTip: true,
          instructions: """
          1. Dabb flekken med kaldt eller lunkent vann og litt oppvaskmiddel.
          
          2. Bruk eventuelt litt eddikvann ved vanskelige flekker.
          
          3. Tørk forsiktig med en ren klut.
          
          4. Gjenta ved behov.

          Tips:
          Barberskum kan fungere godt på møbelstoff.
          """
      )
  )
    
    // WASHING GUIDES
    
  let bathroom = WashingModel(
      title: "Bad",
      sections: [
          
          CleaningSection(
              title: "Kalk på dusj og kraner",
              icon: "drop.fill",
              steps: [
                  "Fyll en pose med 7% eddik.",
                  "Fest posen rundt dusjhodet eller kranen med en strikk.",
                  "La det virke i 1–3 timer.",
                  "Skyll godt og tørk av med klut."
              ],
              extraTip: "Fungerer veldig godt på både dusjhoder og armatur."
          ),
          
          CleaningSection(
              title: "Fuger mellom fliser",
              icon: "square.grid.3x3.fill",
              steps: [
                  "Lag en pasta av natron og litt vann.",
                  "Smør pastaen på fugene.",
                  "Spray over litt eddik.",
                  "Skrubb med en gammel tannbørste."
              ],
              extraTip: "Det er helt normalt at blandingen bruser."
          ),
          
          CleaningSection(
              title: "Speil uten skjolder",
              icon: "mirror.side.left.and.heat.waves",
              steps: [
                  "Bland 1 del eddik og 1 del vann.",
                  "Spray blandingen på speilet.",
                  "Tørk av med mikrofiberklut.",
                  "Poler forsiktig for ekstra glans."
              ],
              extraTip: "Bruk alltid ren mikrofiberklut for best resultat."
          ),
          
          CleaningSection(
              title: "Rengjør toalett",
              icon: "toilet.fill",
              steps: [
                  "Hell litt eddik eller toalettrens i skålen.",
                  "La det virke i noen minutter.",
                  "Skrubb godt med toalettbørste.",
                  "Skyll ned."
              ],
              extraTip: "Natron kan hjelpe mot vanskelig lukt."
          ),
          
          CleaningSection(
              title: "Dusjdører i glass",
              icon: "door.sliding.right.hand.open",
              steps: [
                  "Spray glasset med eddikblanding.",
                  "La det virke i noen minutter.",
                  "Tørk over med mikrofiberklut.",
                  "Bruk nal til slutt for blank finish."
              ],
              extraTip: "Nal etter dusj forebygger kalkflekker."
          ),
          
          CleaningSection(
              title: "Vaskemaskin uten lukt",
              icon: "washer.fill",
              steps: [
                  "Tøm vaskemaskinen helt.",
                  "Hell eddik i såpeskuffen.",
                  "Kjør en varm tom vask.",
                  "Tørk rundt gummilister og dør etterpå."
              ],
              extraTip: "La døren stå litt åpen mellom vasker."
          )
      ]
  )
    
  let kitchen = WashingModel(
      title: "Kjøkken",
      sections: [
          
          CleaningSection(
              title: "Vond lukt i kjøleskap",
              icon: "snowflake",
              steps: [
                  "Tøm kjøleskapet og tørk over hyller og skuffer.",
                  "Sett inn en liten skål med natron.",
                  "La den stå over natten for å trekke til seg lukt."
              ],
              extraTip: "Natron fungerer veldig godt mot sur og innestengt lukt."
          ),
          
          CleaningSection(
              title: "Rengjør stekeovn",
              icon: "oven",
              steps: [
                  "Lag en tykk pasta av natron og vann.",
                  "Smør pastaen på innsiden av ovnen.",
                  "La det virke i flere timer eller over natten.",
                  "Spray litt eddik over og tørk bort med klut."
              ],
              extraTip: "Perfekt for fastbrent fett uten sterke kjemikalier."
          ),
          
          CleaningSection(
              title: "Fettete kjøkkenvifte",
              icon: "fanblades.fill",
              steps: [
                  "Ta ut filteret fra kjøkkenviften.",
                  "Legg det i varmt vann med Zalo.",
                  "La det ligge i 20–30 minutter.",
                  "Skyll godt og la det tørke."
              ],
              extraTip: "Natron i vannet hjelper mot ekstra fettete filtre."
          ),
          
          CleaningSection(
              title: "Mikrobølgeovn",
              icon: "microwave",
              steps: [
                  "Fyll en skål med vann og sitronskiver.",
                  "Varm den i mikrobølgeovnen i 3–5 minutter.",
                  "La dampen virke litt før du åpner døren.",
                  "Tørk enkelt bort matrester og fett."
              ],
              extraTip: "Sitronsaft gir frisk lukt samtidig."
          ),
          
          CleaningSection(
              title: "Blank kjøkkenvask",
              icon: "drop.fill",
              steps: [
                  "Strø natron i vasken.",
                  "Skrubb forsiktig med svamp.",
                  "Skyll med varmt vann.",
                  "Tørk over med mikrofiberklut."
              ],
              extraTip: "Litt eddik gir ekstra glans på stålvasker."
          ),
          
          CleaningSection(
              title: "Skjærefjøl i tre",
              icon: "rectangle.and.hand.point.up.left.fill",
              steps: [
                  "Dryss grovt salt over fjølen.",
                  "Gni med en halv sitron.",
                  "Skyll med varmt vann.",
                  "La fjølen lufttørke stående."
              ],
              extraTip: "Fjerner både lukt og misfarging fra treverket."
          )
      ]
  )
  
  let bedroom = WashingModel(
      title: "Soverom",
      sections: [
          
          CleaningSection(
              title: "Frisk opp madrassen",
              icon: "bed.double.fill",
              steps: [
                  "Strø natron jevnt over madrassen.",
                  "La det virke i 1–2 timer.",
                  "Støvsug madrassen grundig.",
                  "Luft gjerne rommet etterpå."
              ],
              extraTip: "Perfekt for å fjerne lukt og friske opp madrassen naturlig."
          ),
          
          CleaningSection(
              title: "Luft dyner i kulde",
              icon: "snowflake",
              steps: [
                  "Heng dynen ut i frisk luft.",
                  "La den ligge ute i minusgrader i noen timer.",
                  "Rist dynen godt før du tar den inn igjen.",
                  "La den få lufttørke helt."
              ],
              extraTip: "Kulde kan bidra til å redusere bakterier og dårlig lukt."
          ),
          
          CleaningSection(
              title: "Bytt sengetøy",
              icon: "bed.double.circle.fill",
              steps: [
                  "Bytt sengetøy minst hver 1–2 uke.",
                  "Vask på anbefalt temperatur.",
                  "Luft madrass og dyne samtidig.",
                  "Bruk gjerne nyvasket sengetøy før leggetid."
              ],
              extraTip: "Rent sengetøy kan bidra til bedre søvn og mindre støv."
          ),
          
          CleaningSection(
              title: "Støv på soverommet",
              icon: "sparkles",
              steps: [
                  "Tørk støv av flater med mikrofiberklut.",
                  "Støvsug under seng og møbler.",
                  "Luft rommet daglig.",
                  "Rist puter og pledd jevnlig."
              ],
              extraTip: "Mindre støv kan bidra til bedre luftkvalitet på soverommet."
          ),
          
          CleaningSection(
              title: "Frisk lukt i garderoben",
              icon: "cabinet.fill",
              steps: [
                  "Rydd bort klær du ikke bruker.",
                  "Luft garderoben jevnlig.",
                  "Sett inn en liten skål med natron.",
                  "Tørk av hyller ved behov."
              ],
              extraTip: "Natron kan hjelpe med å trekke til seg lukt og fuktighet."
          )
      ]
  )
    
   let livingroom = WashingModel(
       title: "Stue",
       sections: [
           
           CleaningSection(
               title: "Frisk opp sofa",
               icon: "sparkles",
               steps: [
                   "Strø natron over hele sofaen.",
                   "La det virke i 30–60 minutter.",
                   "Støvsug grundig over hele sofaen.",
                   "Luft gjerne rommet etterpå."
               ],
               extraTip: "Perfekt for å fjerne lukt fra kjæledyr, mat eller treningstøy."
           ),
           
           CleaningSection(
               title: "Vask av treverk",
               icon: "table.furniture.fill",
               steps: [
                   "Bland 1 liter vann med 1 ss eddik og 1 dråpe Zalo.",
                   "Vri kluten godt opp før bruk.",
                   "Tørk forsiktig over bord og stoler.",
                   "Tørk etter med tørr klut."
               ],
               extraTip: "Treverk tåler dårlig for mye vann."
           ),
           
           CleaningSection(
               title: "Hvite ringer fra glass",
               icon: "circle.fill",
               steps: [
                   "Bruk hårføner på lav varme i noen sekunder.",
                   "Beveg føneren hele tiden for å unngå skade.",
                   "Smør litt olivenolje på området etterpå.",
                   "Tørk av med myk klut."
               ],
               extraTip: "Fungerer best på ferske merker."
           ),
           
           CleaningSection(
               title: "Naturlig polish til treverk",
               icon: "sparkles",
               steps: [
                   "Ha litt olivenolje på en myk klut.",
                   "Tørk forsiktig over treverket.",
                   "Poler med tørr del av kluten.",
                   "La overflaten tørke noen minutter."
               ],
               extraTip: "Bruk svært lite olje for å unngå fettete overflater."
           )
       ]
   )
    context.insert(bathroom)
    context.insert(kitchen)
    context.insert(bedroom)
    context.insert(livingroom)
}
