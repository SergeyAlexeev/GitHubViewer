import SwiftUI

struct RepoDetailsView: View {
    @StateObject private var viewModel = RepoViewModel()
    
    var id: Int
    var body: some View {
        VStack {
            Text(viewModel.repo.name)
            Text(viewModel.repo.language)
            Text(viewModel.repo.description)
        }.onAppear() {
            viewModel.onAppear(id: id)
        }.navigationBarTitle(viewModel.repo.name, displayMode: .large)
    }
}

struct RepoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailsView(id: 123)
    }
}
