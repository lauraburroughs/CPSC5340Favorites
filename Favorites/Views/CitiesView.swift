//
//  CitiesView.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import SwiftUI

struct CitiesView: View {

    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredCities(searchText)) { city in CityCardView(city: city)
                }
            }
            .padding()
        }
    }
}
