
import Foundation

protocol IMoviesListPresenter : class {
    var view: IMoviesListView? {get set}
    
    func loadData()
    
    func select(index: Int)
}
