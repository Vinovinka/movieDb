import Foundation

protocol IMoviesItemView : AnyObject {
    
    func input(data: Any?)
    
    func setup(item: MoviesItem)
}
