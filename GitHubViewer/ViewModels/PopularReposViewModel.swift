//
//  PopularReposViewModel.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

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
