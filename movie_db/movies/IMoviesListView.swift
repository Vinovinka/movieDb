//
//  IMoviesListView.swift
//  movie_db
//
//  Created by Виктория Виноградова on 29.09.2020.
//

import Foundation

protocol IMoviesListView : class {
    func setupMovies(movies: [MoviesItem])
    
    func openItem(movie: MoviesItem)
}
