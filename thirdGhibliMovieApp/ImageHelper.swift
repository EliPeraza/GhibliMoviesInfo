//
//  ImageHelper.swift
//  thirdGhibliMovieApp
//
//  Created by Elizabeth Peraza  on 1/1/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit


enum ImageHelper: String, CaseIterable {
  case arriety = "arriety"
  case castleInTheSky = "castle in the sky"
  case fromUpOnPoppyHill = "from up on poppy hill"
  case graveOfTheFireflies = "grave of the fireflies"
  case howlsMovingCastle = "howl's moving castle"
  case kikisDeliveryService = "kiki's delivery service"
  case myNeighborsTheYamadas = "my neighbors the yamadas"
  case myNeighborTotoro = "my neighbor totoro"
  case onlyYesterday = "only yesterday"
  case pomPoko = "pom poko"
  case ponyo = "ponyo"
  case porcoRosso = "porco rosso"
  case princessMononoke = "princess mononoke"
  case spiritedAway = "spirited away"
  case talesFromEarthsea = "tales from earthsea"
  case theCatReturns = "the cat returns"
  case theTaleOfPrincessKaguya = "the tale of princess kaguya"
  case theWindsRises = "the winds rises"
  case whenMarnieWasThere = "when marnie was there"
  case whisperOfTheHeart = "whisper of the heart"
  case totoro = "totoro"
  case ghibliIconPic = "ghibliIconPic"
  case dotSpirit = "dotSpirit"
  
}

struct ImageSetter {
  static func setPicture(str: String) -> UIImage{
    var imageToSet = UIImage()
    switch str.lowercased() {
    case "arrietty":
      imageToSet = UIImage(named: ImageHelper.arriety.rawValue) ?? UIImage(named: "arriety")!
    case "castle in the sky":
      imageToSet = UIImage(named: ImageHelper.castleInTheSky.rawValue) ?? UIImage(named: "castleInTheSky")!
    case "from up on poppy hill":
      imageToSet = UIImage(named: ImageHelper.fromUpOnPoppyHill.rawValue) ?? UIImage(named: "fromUpOnPoppyHill")!
    case "grave of the fireflies":
      imageToSet = UIImage(named: ImageHelper.graveOfTheFireflies.rawValue) ?? UIImage(named: "graveOfTheFireflies")!
    case "howl's moving castle":
      imageToSet = UIImage(named: ImageHelper.howlsMovingCastle.rawValue) ?? UIImage(named: "howlsMovingCastle")!
    case "kiki's delivery service":
      imageToSet = UIImage(named: ImageHelper.kikisDeliveryService.rawValue) ?? UIImage(named: "kikisDeliveryService")!
    case "my neighbors the yamadas":
      imageToSet = UIImage(named: ImageHelper.myNeighborsTheYamadas.rawValue) ?? UIImage(named: "myNeighborsTheYamadas")!
    case "my neighbor totoro":
      imageToSet = UIImage(named: ImageHelper.myNeighborTotoro.rawValue) ?? UIImage(named: "myNeighborTotoro")!
    case "only yesterday":
      imageToSet = UIImage(named: ImageHelper.onlyYesterday.rawValue) ?? UIImage(named: "onlyYesterday")!
    case "pom poko":
      imageToSet = UIImage(named: ImageHelper.pomPoko.rawValue) ?? UIImage(named: "pomPoko")!
    case "ponyo":
      imageToSet = UIImage(named: ImageHelper.ponyo.rawValue) ?? UIImage(named: "ponyo")!
    case "porco rosso":
      imageToSet = UIImage(named: ImageHelper.porcoRosso.rawValue) ?? UIImage(named: "porcoRosso")!
    case "princess mononoke":
      imageToSet = UIImage(named: ImageHelper.princessMononoke.rawValue) ?? UIImage(named: "princessMononoke")!
    case "spirited away":
      imageToSet = UIImage(named: ImageHelper.spiritedAway.rawValue) ?? UIImage(named: "spiritedAway")!
    case "tales from earthsea":
      imageToSet = UIImage(named: ImageHelper.talesFromEarthsea.rawValue) ?? UIImage(named: "talesFromEarthsea")!
    case "the cat returns":
      imageToSet = UIImage(named: ImageHelper.theCatReturns.rawValue) ?? UIImage(named: "theCatReturns")!
    case "the tale of the princess kaguya":
      imageToSet = UIImage(named: ImageHelper.theTaleOfPrincessKaguya.rawValue) ?? UIImage(named: "theTaleOfPrincessKaguya")!
    case "the wind rises":
      imageToSet = UIImage(named: ImageHelper.theWindsRises.rawValue) ?? UIImage(named: "theWindsRises")!
    case "when marnie was there":
      imageToSet = UIImage(named: ImageHelper.whenMarnieWasThere.rawValue) ?? UIImage(named: "whenMarnieWasThere")!
    case "whisper of the heart":
      imageToSet = UIImage(named: ImageHelper.whisperOfTheHeart.rawValue) ?? UIImage(named: "whisperOfTheHeart")!
    case "totoro":
      imageToSet = UIImage(named: ImageHelper.totoro.rawValue) ?? UIImage(named: "totoro")!
    case "ghibliIconPic":
      imageToSet = UIImage(named: ImageHelper.ghibliIconPic.rawValue) ?? UIImage(named: "ghibliIconPic")!
    case "dotSpirit":
      imageToSet = UIImage(named: ImageHelper.dotSpirit.rawValue) ?? UIImage(named: "dotSpirit")!
    default:
      imageToSet = UIImage(named: "ghibliIconPic")!
    }
    return imageToSet
  }
  
}


