import Foundation

struct MoviesList: Codable {
    var results: [MoviesItem] = [MoviesItem]()
    
    enum CodingKeys: String, CodingKey {
        case results = "results"
    }
}
