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
                
                let cities = favorites.favoriteCities(searchText: searchText)
                let hobbies = favorites.favoriteHobbies(searchText: searchText)
                let books = favorites.favoriteBooks(searchText: searchText)

                
                if !cities.isEmpty {
                    Section("Cities") {
                        ForEach(cities) { city in
                            HStack {
                                Text(city.cityName)
                                Spacer()
                                Button {
                                    favorites.toggleFavoriteCity(city: city)
                                } label: {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }
                }
                
                if !hobbies.isEmpty {
                    Section("Hobbies") {
                        ForEach(hobbies) { hobby in
                            HStack {
                                Text(hobby.hobbyName)
                                Spacer()
                                Button {
                                    favorites.toggleFavoriteHobby(hobby: hobby)
                                } label: {
                                    Image(systemName: "heart.fill")
                                        .foregroundColor(.red)
                                }
                            }
                        }
                    }
                }
                
                    if !books.isEmpty {
                        Section("Books") {
                            ForEach(books) { book in
                                HStack {
                                    VStack(alignment: .leading) {
                                        Text(book.bookTitle)
                                        Text(book.bookAuthor)
                                            .font(.subheadline)
                                            .foregroundColor(.secondary)
                                    }
                                    Spacer()
                                    Button {
                                        favorites.toggleFavoriteBook(book: book)
                                        } label: {
                                            Image(systemName: "heart.fill")
                                                .foregroundColor(.red)
                                    }
                                }
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
