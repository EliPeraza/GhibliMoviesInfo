//
//  GhibliMoviesAPI.swift
//  thirdGhibliMovieApp
//
//  Created by Elizabeth Peraza  on 1/1/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import Foundation

final class GhilbiMovieAPI {
  
  static func getMovieInfo (keyword: String, completionHandler: @escaping (AppError?, [GhilbiStudioMovies]?) -> Void) {
    let urlString = "https://ghibliapi.herokuapp.com/\(keyword)"
    
    guard let url = URL(string: urlString) else {
      completionHandler(AppError.badURL("malformatted URL"), nil)
      return
    }
    URLSession.shared.dataTask(with: url) { (data, response, error) in
      if let error = error {
        completionHandler(AppError.networkError(error), nil)
      } else if let data = data {
        do {
          let searchData = try JSONDecoder().decode([GhilbiStudioMovies].self, from: data)
          completionHandler(nil, searchData)
        } catch {
          completionHandler(AppError.decodingError(error), nil)
        }
      }
      } .resume()
    
  }
  
}
