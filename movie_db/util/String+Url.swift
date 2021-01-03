import Foundation

extension String {
    var imageUrl: String {
        let baseImage = NetworkConfig.shared.imageUrl
        return "\(baseImage)\(self)"
    }
}
