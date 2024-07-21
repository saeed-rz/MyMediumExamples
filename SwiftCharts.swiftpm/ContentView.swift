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
    var secondStoresPerfInfo: [PerformanceInfo] = [
        .init(stores: 0, rating: 2),
        .init(stores: 1, rating: 3),
        .init(stores: 2, rating: 1),
        .init(stores: 3, rating: 4),
        .init(stores: 4, rating: 5),
        .init(stores: 5, rating: 4)
    ]
    var body: some View {
        let multiplePerformers = [
            (name: "First Store", info: storesPerfInfo),
            (name: "Second Store", info: secondStoresPerfInfo),
        ]
        VStack {
            Text("Stores performance")
            Chart (multiplePerformers, id: \.name) { performer in
                ForEach(performer.info) { perfInfo in
                    BarMark(
                        x: .value("Store ID", perfInfo.stores),
                        y: .value("Rating", perfInfo.rating)
                    )
                    .foregroundStyle(by: .value("Performer", performer.name))
                    .position(by: .value("Performer", performer.name), axis: .horizontal, span: .inset(15))
                }
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
