![alt text](https://github.com/ajariwala1/Favorites/blob/main/Docs/banner_au.png?raw=true)

# Favorites App

The Favorites App is an iOS application built with SwiftUI that allows users to browse and manage their favorite items across three categories: Cities, Hobbies, and Books. Users can mark items as favorites, view them in a dedicated Favorites tab, and remove them directly from that view. The app uses a shared ViewModel to ensure that all changes remain synchronized across the interface.</p>
This app was built based on skeleton code from CPSC 5340. It was developed as part of coursework to demonstrate understanding of SwiftUI, MVVM architecture, and state management across multiple views.<br/>

## Getting Started

Clone the repository: git clone https://github.com/your-username/CPSC5340Favorites.git

Open the project in Xcode: open Favorites.xcodeproj

Build and run the app using the iOS Simulator or a connected device.<br/>

## Key Concepts and Features
- SwiftUI data flow using @StateObject and @EnvironmentObject
- Protocol-oriented design with Favoritable
- Generic data management using a category manager
- Real-time UI updates using @Published
- Separation of concerns through MVVM architecture
- Favorites are saved using a category-based storage manager
- Data persists between app launches
