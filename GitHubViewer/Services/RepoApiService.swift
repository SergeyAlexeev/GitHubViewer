import Foundation

protocol RepoApiServiceProtocol {
    func fetchRepo(id: Int, completion: @escaping (RepositoryDetails) -> Void)
}

final class RepoApiService: RepoApiServiceProtocol {
    func fetchRepo(id: Int, completion: @escaping (RepositoryDetails) -> Void) {
        guard let url = URL(string: "https://api.github.com/repositories/\(id)") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }
            
            do {
                let repo = try JSONDecoder().decode(RepositoryDetails.self, from: data)
                
                DispatchQueue.main.async {
                    completion(repo)
                }
            } catch {
                print(error)
            }
        }
        
        task.resume()
    }
}
