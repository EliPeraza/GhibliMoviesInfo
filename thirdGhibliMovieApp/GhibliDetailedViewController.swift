//
//  GhibliDetailedViewController.swift
//  thirdGhibliMovieApp
//
//  Created by Elizabeth Peraza  on 1/1/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

class GhibliDetailedViewController: UIViewController {
  
  var selectedMovieDetails: GhilbiStudioMovies!
  
  @IBOutlet weak var imageDetailed: UIImageView!
  
  @IBOutlet weak var director: UILabel!
  
  @IBOutlet weak var releaseDate: UILabel!
  
  @IBOutlet weak var movieDescription: UITextView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    setInfo()
    dump(selectedMovieDetails)
    title = selectedMovieDetails.title
  }
  
  
  func setInfo() {
    if let movieDesc = selectedMovieDetails {
      movieDescription.text = movieDesc.description
    } else {
      movieDescription.text = "nothing nothing"
    }
    
    director.text = "Director: " + selectedMovieDetails.director
    
    if let date = selectedMovieDetails.release_date{
      
      releaseDate.text = "Release year: " + date
      
    } else {
      releaseDate.text = "Release year: Unknown"
      
    }
    
    imageDetailed.image = ImageSetter.setPicture(str: selectedMovieDetails.title)
    
  }
  
}
