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
    
    let imagePath = "6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg"
    let baseURL = "https://image.tmdb.org/t/p/"
    let size = "w500"
   
    var body: some View {
            VStack {
              
                
                AsyncImage(url: URL(string: "\(baseURL)\(size)/\(imagePath)" )) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .cornerRadius(10)
                        .id(0)
                } placeholder: {
                    Image(systemName: "person")
                }
                
                let movie = moviesViewModel.movies
                Text(movie?.originalTitle ?? "")
                    .font(.title)
                    .padding()
                
                Text(movie?.overview ?? "")
                    .padding()
                
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
