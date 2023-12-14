//
//  StatusModel.swift
//  SeriesYPelisApp
//
//  Created by Manuel Cazalla Colmenero on 14/12/23.
//

import Foundation

enum StatusModel {
    case none
    case loaded
    case loading
    case error(error: String)
}
