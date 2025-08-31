import SwiftUI

struct MainTabView: View {

    var body: some View {
        TabView {
            CoffeeListView()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Coffees")
                }
            
            FavoriteView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }
        }
    }
}

#Preview {
    MainTabView()
}
