import Foundation

struct RepositoryDetails: Hashable, Codable {
    let id: Int
    let name: String
    let language: String
    let description: String
}
