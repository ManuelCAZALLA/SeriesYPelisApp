//
//  MoviesViewModel.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import Foundation
import Combine

final class MoviesViewModel: ObservableObject {
    @Published var movies: Movie?
    @Published var status = StatusModel.none
    
    var suscriptor = Set<AnyCancellable>()
    
    func getMovies() {
        self.status = .none
        URLSession.shared.dataTaskPublisher(for: BaseNetwork().getAllMovies())
            .tryMap {
                guard let response = $0.response as? HTTPURLResponse,
                      response.statusCode == 200 else {
                    throw URLError(.badServerResponse)
                }
                return $0.data
            }
            .decode(type: Movie.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .failure(let error):
                    print("Error: \(error)")
                case .finished:
                    self.status = .loaded
                }
            } receiveValue: { data in
                self.movies = data
                print(data)
            }
            .store(in: &suscriptor)
    }
}



