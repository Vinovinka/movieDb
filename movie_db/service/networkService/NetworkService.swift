import Foundation

class NetworkService: NSObject {
    enum Methods {
        case get, put, post, delete
        
        func toMethods()->String{
            switch self {
            case .get:
                return "GET"
            case .put:
                return "PUT"
            case .post:
                return "POST"
            case .delete:
                return "DELETE"
            }
        }
    }
    
    static let shared = NetworkService()
    
    var urlConfiguration = URLSessionConfiguration.default
    
    lazy var urlSession: URLSession? = {
        return URLSession(configuration: urlConfiguration)
    } ()
    
    var dataTask: URLSessionTask? = nil
    
    func request<T>(url: String, parameters: [String: Any], method: Methods, completion: @escaping(Result<T,Error>)->Void) where T:Codable{
        
        guard let urlPath = URL(string: url) else {
            return
        }
        
        var urlRequest = URLRequest(url: urlPath)
        urlRequest.httpMethod = method.toMethods()
        
        self.dataTask = self.urlSession?.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
            
            if let error = error {
                DispatchQueue.main.async {
                    completion(.failure(error))
                }
            } else {
                if let data = data {
                    let jsonDecoder = JSONDecoder()
                    jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                    let df = DateFormatter()
                    df.dateFormat = "yyyy-MM-dd"
                    jsonDecoder.dateDecodingStrategy = .formatted(df)
                    
                    do {
                        let result = try jsonDecoder.decode(T.self, from: data)
                        DispatchQueue.main.async {
                            completion(.success(result))
                        }
                    } catch {
                        DispatchQueue.main.async {
                            completion(.failure(error))
                        }
                    }
                }
            }
        })
        self.dataTask?.resume()
    }
}
