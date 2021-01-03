import UIKit
import Kingfisher

class MoviesViewCell: UITableViewCell {
    
    static let cellId = String(describing: MoviesViewCell.self)
    
    @IBOutlet weak var moviesTextLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var moviesImage:UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setupItem(item: MoviesItem) {
        self.titleLabel.text = item.title
        self.moviesTextLabel.text = item.overview
        
        if let url = URL(string: item.posterPath.imageUrl) {
            self.moviesImage?.kf.setImage(with: url)
        } else {
            self.moviesImage?.image = nil
        }
    }
    
}
