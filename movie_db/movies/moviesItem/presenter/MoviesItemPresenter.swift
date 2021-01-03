//
//  MoviesItemPresenter.swift
//  movie_db
//
//  Created by Виктория Виноградова on 28.12.2020.
//

import Foundation

class MoviesItemPresenter : NSObject, IMoviesItemPresenter {
    private var item: MoviesItem? = nil
    
    weak var view: IMoviesItemView?
    
    static func setup(view: IMoviesItemView)->IMoviesItemPresenter {
        let presenter = MoviesItemPresenter()
        presenter.view = view
        return presenter
    }
    
    func setup(item: MoviesItem) {
        self.item = item
    }
    
    func setupContent() {
        if let item = item {
            self.view?.setup(item: item)
        }
    }
    
    
}
