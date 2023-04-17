import Foundation

struct Repository: Hashable, Codable {
    let id: Int
    let name: String
    let description: String
    let stargazers_count: Int
}
