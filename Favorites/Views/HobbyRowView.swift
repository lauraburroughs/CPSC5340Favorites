//
//  HobbyRowView.swift
//  Favorites
//
//  Created by Laura Burroughs on 3/26/26.
//

import SwiftUI

struct HobbyRowView: View {
    
    let hobby: HobbyModel
    @EnvironmentObject private var favorites: FavoritesViewModel
    
    var body: some View {
        HStack {
            Text(hobby.hobbyIcon)
                .font(.title2)
            Text(hobby.hobbyName)
                .font(.body)
            
            Spacer()
            
            Button(action: {
                print("Tapped for \(hobby.hobbyName)")
            }) {
                Image(systemName: hobby.isFavorite ? "heart.fill" : "heart")
                    .foregroundStyle(hobby.isFavorite ? .red : .white)
            }
        }
        .padding(.vertical, 4)
    }
}

#Preview {
    HobbyRowView(hobby: HobbyModel(id: 1, hobbyName: "Hiking", hobbyIcon: "🥾"))
}
