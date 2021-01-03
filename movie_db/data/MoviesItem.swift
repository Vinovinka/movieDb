
import Foundation

struct MoviesItem : Codable {
    var id : Int = 0
    var title : String = ""
    var overview : String = ""
    var posterPath : String = ""
    var releaseDate : Date = Date()
}
