//
//  CitiesView.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import SwiftUI

struct BooksView: View {

    @EnvironmentObject var favorites: FavoritesViewModel
    @Binding var searchText: String
    
    var body: some View {
        ScrollView {
            LazyVStack {
                ForEach(favorites.filteredBooks(searchText: searchText)) { book in BookCardView(book: book)
                }
            }
            .padding()
        }
    }
}

#Preview {
    BooksView(searchText: .constant(""))
        .environmentObject(FavoritesViewModel())
}

