//
//  GhibliMovieViewController.swift
//  thirdGhibliMovieApp
//
//  Created by Elizabeth Peraza  on 1/1/19.
//  Copyright © 2019 Elizabeth Peraza . All rights reserved.
//

import UIKit

class GhibliMovieViewController: UIViewController {
  
  
  @IBOutlet weak var searchBar: UISearchBar!
  
  @IBOutlet weak var movieTableView: UITableView!
  
  
  private var ghibliMovies = [GhilbiStudioMovies]() {
    didSet{
      self.movieTableView.reloadData()
    }
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    movieTableView.dataSource = self
    movieTableView.delegate = self
    searchBar.delegate = self
    getMovieData()
    dump(ghibliMovies)
    title = "Ghibli Studio Movies"
  }
  
  func getMovieData() {
    GhilbiMovieAPI.getMovieInfo(keyword: "films") { (error, data) in
      DispatchQueue.main.async {
        if let error = error {
          print(error)
        }
        if let data = data {
          self.ghibliMovies = data
        }
      }
    }
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let indexPath = movieTableView.indexPathForSelectedRow,
      let ghibliDetailedVC = segue.destination as? GhibliDetailedViewController else {return}
    
    let currentMovieToSegue = ghibliMovies[indexPath.row]
    
    ghibliDetailedVC.selectedMovieDetails = currentMovieToSegue
  }
  
}

extension GhibliMovieViewController: UITableViewDataSource {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return ghibliMovies.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = movieTableView.dequeueReusableCell(withIdentifier: "ghibliMovieCell", for: indexPath) as? GhibliCustomCell else {return UITableViewCell()}
    
    let currentMovie = ghibliMovies[indexPath.row]
    cell.movieTitle.text = currentMovie.title
    
    cell.movieImage.image = ImageSetter.setPicture(str: currentMovie.title)
    
    return cell
  }
  
}

extension GhibliMovieViewController: UITableViewDelegate {
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
}

extension GhibliMovieViewController: UISearchBarDelegate {
  func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    searchBar.resignFirstResponder()
    
    if let searchText = searchBar.text {
      
      if searchText == "" {
        _ = getMovieData()
        movieTableView.reloadData()
      } else {
        ghibliMovies = ghibliMovies.filter{$0.title.lowercased().contains(searchText.lowercased())}
      }
      
      
    }
  }
  
  
}
