import SwiftUI

struct RepoDetailsView: View {
    var name: String
    var body: some View {
        VStack {
            Text(name)
        }.navigationBarTitle(name, displayMode: .large)
    }
}

struct RepoDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        RepoDetailsView(name: "Repo Name")
    }
}
