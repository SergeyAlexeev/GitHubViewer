import Foundation

protocol RepoDetailsRepositoryProtocol {
    func fetchRepo(id: Int, completion: @escaping (RepositoryDetails) -> Void)
}

final class RepoDetailsRepository: RepoDetailsRepositoryProtocol {
    private let apiService: RepoApiServiceProtocol
    
    init(apiService: RepoApiServiceProtocol = RepoApiService()) {
        self.apiService = apiService
    }
    
    func fetchRepo(id: Int, completion: @escaping (RepositoryDetails) -> Void) {
        apiService.fetchRepo(id: id, completion: completion)
    }
}
