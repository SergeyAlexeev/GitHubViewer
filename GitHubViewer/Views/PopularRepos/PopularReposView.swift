import SwiftUI

struct PopularReposView: View {
    @StateObject private var viewModel = PopularReposViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.list, id: \.id) { repository in
                NavigationLink(repository.name) {
                    RepoDetailsView(id: repository.id)
                }
            }.onAppear {
                viewModel.onAppear()
            }.navigationBarTitle("GitHub Viewer", displayMode: .large)
        }
    }
}

struct PopularReposView_Previews: PreviewProvider {
    static var previews: some View {
        PopularReposView()
    }
}
