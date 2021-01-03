//
//  TableOwner.swift
//  movie_db
//
//  Created by Виктория Виноградова on 28.12.2020.
//

import Foundation

protocol TableOwner : class {
    func select(index: Int)
}
