//
//  BaseNetwork.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import Foundation
import Combine

struct BaseNetwork {
    let token = "eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiJmMTU2OWY2YTY2Y2VhNmNjMTIzOWZhZThmODQ1NTVmYSIsInN1YiI6IjY1N2FjYjQ2ZWM4YTQzMDBjMzNiMzZiNiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.4YmXhlWsQXrJE8ppE5e0J0W5iHC9dejsfGBiV2HEYi4"
   
    func getMovies() -> URLRequest {
        let urlString = "https://api.themoviedb.org/3/movie/11?api_key=f1569f6a66cea6cc1239fae8f84555fa"
        
        let url = URL(string: urlString)
        // Request
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        request.addValue("aplication/json", forHTTPHeaderField: "accept")
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        return request
    }
}
