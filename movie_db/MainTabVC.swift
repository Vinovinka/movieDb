//
//  MainTabVC.swift
//  movie_db
//
//  Created by Виктория Виноградова on 29.09.2020.
//

import UIKit

class MainTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()

    }

    private func setup() {
        let list = MoviesListVC()
        list.tabBarItem = UITabBarItem(title: "Фильмы", image: nil, tag: 0)
        
        let search = SearchVC()
        search.tabBarItem = UITabBarItem(title: "Поиск", image: nil, tag: 1)
        
        self.viewControllers = [UINavigationController(rootViewController: list), search]
        
    }

}
