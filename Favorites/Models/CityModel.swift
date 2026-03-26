//
//  CityModel.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import Foundation

struct CityModel : Identifiable {
    let id: Int
    let cityName: String
    let cityImage: String
    var isFavorite: Bool = false
}
