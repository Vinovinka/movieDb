//
//  IMoviesItemView.swift
//  movie_db
//
//  Created by Виктория Виноградова on 28.12.2020.
//

import Foundation

protocol IMoviesItemView : class {
    func input(data: Any?)
    
    func setup(item: MoviesItem)
}
