import Foundation

protocol IMoviesListView : AnyObject {
    
    func setupMovies(movies: [MoviesItem])
    
    func openItem(movie: MoviesItem)
}
