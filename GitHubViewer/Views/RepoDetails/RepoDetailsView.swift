//
//  RepoDetailsView.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 17.04.2023.
//

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
