import Charts
import SwiftUI

struct ContentView: View {
    var storesPerfInfo: [PerformanceInfo] = [
        .init(stores: 0, rating: 3),
        .init(stores: 1, rating: 2),
        .init(stores: 2, rating: 4),
        .init(stores: 3, rating: 5),
        .init(stores: 4, rating: 1),
        .init(stores: 5, rating: 3)
    ]
    var body: some View {
        VStack {
            Text("Stores performance")
            Chart(storesPerfInfo) { perfInfo in
                BarMark(
                    x: .value("Store ID", perfInfo.stores),
                    y: .value("Rating", perfInfo.rating)
                )
            }
        }
        .padding()
    }
}

struct PerformanceInfo: Identifiable {
    var id = UUID()
    var stores: Int
    var rating: Int
}
