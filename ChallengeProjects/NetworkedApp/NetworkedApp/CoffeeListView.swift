import SwiftUI

struct CoffeeListView: View {
    @State private var coffees: [Coffee] = []
    @StateObject private var favoriteManager = FavoriteManager()

    
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 20) {
                    ForEach(coffees) { coffee in
                        NavigationLink(destination: CoffeeDetailView(coffee: coffee)) {
                            CoffeeItemView(
                                coffee: coffee,
                                isFavorite: Binding(
                                    get: { favoriteManager.isFavorite(id: coffee.id) },
                                    set: { _ in favoriteManager.toggleFavorite(for: coffee.id) }
                                )
                               )
                            .padding(.horizontal)
                        }
                    }
                }
                .padding(.vertical)
            }
            .navigationBarTitle("Coffees")
        }
        .task {
            do {
                coffees = try await getCoffees()
            } catch {
                print("Failed to fetch coffees: \(error)")
            }
        }
    }
    
    func getCoffees() async throws -> [Coffee] {
        guard let url = URL(string: "https://api.sampleapis.com/coffee/hot") else { return [] }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let coffees = try JSONDecoder().decode([Coffee].self, from: data)
        
        return coffees
    }
}

#Preview {
    CoffeeListView()
}
