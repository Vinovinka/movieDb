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
