//
//
//  CityModel.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import Foundation

struct HobbyModel : Identifiable {
    let id: Int
    let hobbyName: String
    let hobbyIcon: String
    var isFavorite: Bool = false
}
