import Foundation

class NetworkConfig: NSObject {
    static let shared = NetworkConfig()
    
    let baseUrl = "http://api.themoviedb.org/3/"
    let imageUrl = "http://image.tmdb.org/t/p/w300"
    
    let apiKey = "1821c5f67108739533dbc89566352680"
}
