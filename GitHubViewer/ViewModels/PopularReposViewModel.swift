import Foundation

final class PopularReposViewModel: ObservableObject {
    @Published var list: [Repository] = []
    
    private let repository: PopularRepositoriesRepositoryProtocol
    
    init(repository: PopularRepositoriesRepositoryProtocol = PopularRepositoriesRepository()) {
        self.repository = repository
    }
    
    func onAppear() {
        repository.fetchPopularRepositories { repositories in
            self.list = repositories
        }
    }
}
