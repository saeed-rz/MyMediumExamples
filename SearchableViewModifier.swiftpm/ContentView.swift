import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let food = Food.sampleFood

    var body: some View {
        NavigationStack {
            List {
                ForEach(searchResults, id: \.self) { item in
                    LabeledContent(item.name) { Text("\(item.category.rawValue)") }

                }
            }
            .searchable(text: $searchText, placement: .navigationBarDrawer(displayMode: .always), prompt: "Search Food")
        }
    }

    var searchResults: [Food] {
        if searchText.isEmpty {
            return food
        } else {
            return food.filter { $0.name.lowercased().contains(searchText.lowercased()) }
        }
    }

}
