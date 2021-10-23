import Foundation

protocol ISearchListView : AnyObject {
    
    func setupMovies(movies: [MoviesItem])
    
    func openItem(movie: MoviesItem)
}
