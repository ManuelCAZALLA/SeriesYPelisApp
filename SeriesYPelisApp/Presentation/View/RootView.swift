//
//  RootView.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import SwiftUI

struct RootView: View {
    @EnvironmentObject var rootViewModel: RootViewModel
    
    var body: some View {
        NavigationView{
            switch rootViewModel.status {
            case .none:
                withAnimation {
                 LoginView()
                }
            case .loaded:
                withAnimation {
                    MoviesView()
                }
            case .loading:
                withAnimation {
                  LoadingView()
                }
                
            case .error(error: _):
                withAnimation {
                   ErrorView()
                    
                }
            }
        }
    }
}

#Preview {
    RootView()
        .environmentObject(RootViewModel())
}
