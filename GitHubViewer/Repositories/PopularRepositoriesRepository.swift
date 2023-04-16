//
//  PopularRepositoriesRepository.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

import Foundation

protocol PopularRepositoriesRepositoryProtocol {
    func fetchPopularRepositories(completion: @escaping ([Repository]) -> Void)
}

final class PopularRepositoriesRepository: PopularRepositoriesRepositoryProtocol {
    private let apiService: PopularRepositoriesApiServiceProtocol
    
    init(apiService: PopularRepositoriesApiServiceProtocol = PopularRepositoriesApiService()) {
        self.apiService = apiService
    }
    
    func fetchPopularRepositories(completion: @escaping ([Repository]) -> Void) {
        apiService.fetchRepositories(completion: completion)
    }
}
