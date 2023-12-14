//
//  RootViewModel.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import Foundation
import Combine

final class RootViewModel: ObservableObject {
    private var suscriptor: Set<AnyCancellable> = []
    
    @Published var status = StatusModel.none
    @Published var movies: Movie?
}
