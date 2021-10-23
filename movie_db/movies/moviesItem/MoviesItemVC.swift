import UIKit
import Kingfisher

class MoviesItemVC: UIViewController {

    
    private lazy var presenter: IMoviesItemPresenter? = {
        return MoviesItemPresenter.setup(view: self)
    }()
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.presenter?.setupContent()

        // Do any additional setup after loading the view.
    }

}

extension MoviesItemVC : IMoviesItemView {
    func input(data: Any?) {
        if let item = data as? MoviesItem {
            self.presenter?.setup(item: item)
        }
    }
    
    func setup(item: MoviesItem) {
        if let url = URL(string: item.posterPath.imageUrl) {
            self.imageView.kf.setImage(with: url)
        }
        self.titleLabel.text = item.title
        self.textLabel.text = item.overview
    }
}
