//
//  PopularRepositoriesResponse.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

import Foundation

struct PopularRepositoriesResponse: Hashable, Codable {
    let items: [Repository]
}
