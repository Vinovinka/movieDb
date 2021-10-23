import Foundation

protocol IMoviesItemPresenter: AnyObject {
    var view: IMoviesItemView? {get set}
    func setup(item: MoviesItem)
    
    func setupContent()
}
