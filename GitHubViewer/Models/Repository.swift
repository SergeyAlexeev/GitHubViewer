//
//  Repository.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

import Foundation

struct Repository: Hashable, Codable {
    let id: Int
    let name: String
    let description: String
    let stargazers_count: Int
}
