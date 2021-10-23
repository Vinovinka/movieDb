import UIKit

class MainTabVC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }

    private func setup() {
        let list = MoviesListVC()
        list.tabBarItem = UITabBarItem(title: "Movies", image: nil, tag: 0)
        
        let search = SearchVC()
        search.tabBarItem = UITabBarItem(title: "Search", image: nil, tag: 1)
        
        self.viewControllers = [UINavigationController(rootViewController: list), search]
        
    }
}
