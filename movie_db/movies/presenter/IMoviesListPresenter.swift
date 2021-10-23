import Foundation

protocol IMoviesListPresenter : AnyObject {
    var view: IMoviesListView? {get set}
    
    func loadData()
    
    func select(index: Int)
}
