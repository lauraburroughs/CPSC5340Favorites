//
//  FavoritesView.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import SwiftUI

struct FavoritesView: View {
    
    @EnvironmentObject var favorites: FavoritesViewModel
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            List {
                
                if !favorites.filteredCities(searchText: searchText).isEmpty {
                    Section("Cities") {
                        ForEach(favorites.filteredCities(searchText: searchText)) { city in Text(city.cityName)
                        }
                    }
                }
                
                if !favorites.filteredHobbies(searchText: searchText).isEmpty {
                    Section("Hobbies") {
                        ForEach(favorites.filteredHobbies(searchText: searchText)) { hobby in Text(hobby.hobbyName)
                        }
                    }
                }
                

                if !favorites.filteredCities(searchText: searchText).isEmpty {
                    Section("Books") {
                        ForEach(favorites.filteredBooks(searchText: searchText)) { book in Text(book.bookTitle)
                        }
                    }
                }
            }
            .navigationTitle("Favorites")
        }
    }
}

#Preview {
    FavoritesView()
}
