//
//  SeriesYPelisAppApp.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import SwiftUI

@main
struct SeriesYPelisAppApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var rootViewModel = RootViewModel()
    @StateObject var moviesViewModel = MoviesViewModel()

    var body: some Scene {
        WindowGroup {
            RootView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(rootViewModel)
                .environmentObject(moviesViewModel)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        rootViewModel.status = .loaded
                    }
                }
        }
    }
}
