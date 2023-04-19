import Foundation

final class RepoViewModel: ObservableObject {
    @Published var repo: RepositoryDetails = RepositoryDetails(id: 0, name: "", language: "", description: "")
    
    private let repository: RepoDetailsRepositoryProtocol
    
    init(repository: RepoDetailsRepositoryProtocol = RepoDetailsRepository()) {
        self.repository = repository
    }
    
    func onAppear(id: Int) {
        repository.fetchRepo(id: id) { repo in
            self.repo = repo
        }
    }
}
