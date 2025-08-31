import SwiftUI

let favoritemanager = FavoriteManager()
@main
struct NetworkedApp: App {
    var body: some Scene {
        WindowGroup {
            MainTabView()
        }
    }
}
