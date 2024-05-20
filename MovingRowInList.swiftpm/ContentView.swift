import SwiftUI

struct ContentView: View {
    @State private var countries = ["USA", "Canada", "Mexico", "England", "Spain", "Germany", "Cameroon", "South Africa" , "Japan", "South Korea"]

    var body: some View {
        NavigationStack {
            List {
                ForEach(countries, id: \.self) {
                    country in
                    Text(country)
                }
                .onMove(perform: moveRow)
            }
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                EditButton()
            }
        }
    }

    private func moveRow(source: IndexSet, destination: Int) {
        countries.move(fromOffsets: source, toOffset: destination)
    }
}
