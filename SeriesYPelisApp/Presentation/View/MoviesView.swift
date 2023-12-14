//
//  MoviesView.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import SwiftUI

struct MoviesView: View {
    @StateObject var moviesViewModel = MoviesViewModel()
    @EnvironmentObject var rootViewModel: RootViewModel
    
    var body: some View {
        VStack {
            
            if let movie = moviesViewModel.movies {
                Text(movie.title)
                    .font(.title)
                    .padding()
                
                Text(movie.overview)
                    .padding()
            }
        }
        .onAppear {
            moviesViewModel.getMovies()
        }
    }
}

#Preview {
    MoviesView()
        .environmentObject(RootViewModel())
        .environmentObject(MoviesViewModel())
}
