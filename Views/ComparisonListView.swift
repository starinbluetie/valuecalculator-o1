import SwiftUI

struct ComparisonListView: View {
    let comparisonResults: [ComparisonResult]

    var body: some View {
        List(comparisonResults, id: \.product.name) { result in
            VStack(alignment: .leading) {
                Text(result.product.name)
                Text("Unit Price: \(result.unitPrice)")
                Text("Discounted Price: \(result.product.price)")
            }
        }
    }
}