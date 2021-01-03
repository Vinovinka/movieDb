
import Foundation

protocol ISearchListPresenter : class {
    var view: ISearchListView? {get set}
    
    func search(query: String)
    func select(index: Int)
}
