//
//  BaseNetwork.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import Foundation
import Combine

struct BaseNetwork {
    
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
    
    func getAllMovies() -> URLRequest {
       let urlString = "https://api.themoviedb.org/3/certification/movie/list"
        
        let url = URL(string: urlString)
        
        var request = URLRequest(url: url!)
        request.httpMethod = "GET"
        request.addValue("aplication/json", forHTTPHeaderField: "accept")
        request.addValue("Bearer \(token)", forHTTPHeaderField: "Authorization")
        
        return request
    }
}

