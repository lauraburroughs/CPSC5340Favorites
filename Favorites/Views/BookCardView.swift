//
//  CityCardView.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import SwiftUI

struct BookCardView: View {
    
    let book : BookModel
    @EnvironmentObject private var favorites : FavoritesViewModel
    

    var body: some View {
        HStack {
            Text(book.bookTitle)
                .font(.headline)
            
            Text(book.bookAuthor)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Spacer()
            
            Button(action: {
                favorites.toggleFavoriteBook(book: book)
                }) {
            
                    Image(systemName: book.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(book.isFavorite ? .red : .black)
                        }
                    }
            .padding(.vertical, 6)
            }
        }

#Preview {
    BookCardView(book: BookModel(id: 1, bookTitle: "Pride and Prejudice", bookAuthor: "Jane Austen", isFavorite: false))
}
