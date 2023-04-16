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
        VStack {
            Text("GitHub Viewer")
                .padding()

            List(viewModel.list, id: \.id) { repository in
                HStack {
                    Text(repository.name)
                }
            }.onAppear {
                viewModel.onAppear()
            }
        }
    }
}

struct PopularReposView_Previews: PreviewProvider {
    static var previews: some View {
        PopularReposView()
    }
}
