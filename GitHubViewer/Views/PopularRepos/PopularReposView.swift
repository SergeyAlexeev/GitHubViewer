//
//  ContentView.swift
//  GitHubViewer
//
//  Created by Алексеев Сергей Александрович on 16.04.2023.
//

import SwiftUI

struct PopularReposView: View {
    @StateObject private var viewModel = PopularReposViewModel()
    
    var body: some View {
        NavigationView {
            List(viewModel.list, id: \.id) { repository in
                HStack {
                    NavigationLink(repository.name) {
                        RepoDetailsView(name: repository.name)
                    }
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
