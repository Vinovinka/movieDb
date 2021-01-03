
import Foundation

protocol IMoviesItemPresenter: class {
    var view: IMoviesItemView? {get set}
    func setup(item: MoviesItem)
    
    func setupContent()
}
