//
//  PopularRepositoriesApiService.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

import Foundation

protocol PopularRepositoriesApiServiceProtocol {
    func fetchRepositories(completion: @escaping ([Repository]) -> Void)
}

final class PopularRepositoriesApiService: PopularRepositoriesApiServiceProtocol {
    func fetchRepositories(completion: @escaping ([Repository]) -> Void) {
        guard let url = URL(string: "https://api.github.com/search/repositories?q=stars:%3E1&sort=stars") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data, error == nil else {
                return
            }

            do {
                let repositories = try JSONDecoder().decode(PopularRepositoriesResponse.self, from: data)
                DispatchQueue.main.async {
                    completion(.init(repositories.items))
                }
            } catch {
                print(error)
            }
        }

        task.resume()
    }
}
