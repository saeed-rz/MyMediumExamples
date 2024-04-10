import SwiftUI

struct City: Identifiable {
    var id = UUID()
    let name: String
    let country: String
    let state: String
}

struct ContentView: View {
    @State private var cities = [
        City(name: "Munich", country: "Germany", state: "Bavaria"),
        City(name: "Berlin", country: "Germany", state: "Berlin"),
        City(name: "Frankfurt", country: "Germany", state: "Hessen")
    ]
    @State private var sortOrder = [KeyPathComparator(\City.name)]
    @State private var selectedCity = Set<City.ID>()
    var body: some View {
        Table(cities, selection: $selectedCity, sortOrder: $sortOrder) {
            TableColumn("Name", value: \.name)
            TableColumn("Country", value: \.country)
            TableColumn("State", value: \.state)
        }
        .onChange(of: sortOrder) { value in
            cities.sort(using: sortOrder)
        }
    }
}
