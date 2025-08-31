import Foundation

class FavoriteManager: ObservableObject {
    @Published var favoriteIDs: Set<Int> = []

    private let key = "favoriteCoffeeIDs"

    init() {
        if let saved = UserDefaults.standard.array(forKey: key) as? [Int] {
            favoriteIDs = Set(saved)
        }
    }

    func toggleFavorite(for id: Int) {
        if favoriteIDs.contains(id) {
            favoriteIDs.remove(id)
        } else {
            favoriteIDs.insert(id)
        }
        save()
    }

    func isFavorite(id: Int) -> Bool {
        favoriteIDs.contains(id)
    }

    private func save() {
        UserDefaults.standard.set(Array(favoriteIDs), forKey: key)
    }
}

