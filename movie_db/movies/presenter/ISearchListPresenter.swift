import Foundation

protocol ISearchListPresenter : AnyObject {
    var view: ISearchListView? {get set}
    
    func search(query: String)
    func select(index: Int)
}
