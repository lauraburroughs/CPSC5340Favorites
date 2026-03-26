//
//  CityModel.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import Foundation

struct BookModel : Identifiable {
    let id: Int
    let bookTitle: String
    let bookAuthor: String
    var isFavorite: Bool = false
}
