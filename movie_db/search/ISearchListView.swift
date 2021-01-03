//
//  ISearchListView.swift
//  movie_db
//
//  Created by Виктория Виноградова on 29.12.2020.
//

import Foundation

protocol ISearchListView : class {
    func setupMovies(movies: [MoviesItem])
    
    func openItem(movie: MoviesItem)
}
