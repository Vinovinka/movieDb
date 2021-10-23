import Foundation

class MoviesService: NSObject {
    static let shared = MoviesService()
    
    weak var networkService = NetworkService.shared
    
    func getMovies(completion: @escaping(Result<MoviesList, Error>)-> Void) {
        let api = "\(NetworkConfig.shared.baseUrl)discover/movie?api_key=\(NetworkConfig.shared.apiKey)&page=1&sort_by=popularity.desc"
        self.networkService?.request(url: api, parameters: [:], method: .get, completion: { (result: Result<MoviesList, Error>) in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
                
            case .success(_):
                print("success")
            }
            completion(result)
        })
    }
    
    func search(query: String, completion: @escaping(Result<MoviesList, Error>)-> Void) {
        let api = "\(NetworkConfig.shared.baseUrl)search/movie?api_key=\(NetworkConfig.shared.apiKey)&query=\(query)&page=1"
        self.networkService?.request(url: api, parameters: [:], method: .get, completion: { (result: Result<MoviesList, Error>) in
            switch result {
            case .failure(let error):
                print(error.localizedDescription)
                
            case .success(_):
                print("success")
            }
            completion(result)
        })
    }
}
