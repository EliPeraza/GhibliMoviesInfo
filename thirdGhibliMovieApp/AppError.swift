//
//  AppError.swift
//  thirdGhibliMovieApp
//
//  Created by Elizabeth Peraza  on 1/1/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import Foundation

enum AppError: Error {
  
  case badURL(String)
  case networkError(Error)
  case noResponse
  case decodingError(Error)
  
  public func errorMessage() -> String {
    switch self {
    case .badURL(let str):
      return "Bad URL: \(str)"
    case .networkError(let error):
      return "Network error: \(error)"
    case .noResponse:
      return "No network response"
    case .decodingError(let error):
      return "Decoding error: \(error)"
    }
  }
  
}
