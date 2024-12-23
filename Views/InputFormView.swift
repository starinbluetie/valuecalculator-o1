
import SwiftUI

struct InputFormView: View {
    @State private var name = ""
    @State private var price = ""
    @State private var quantity = ""
    @State private var unitType = ""
    
    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Price", text: $price)
            TextField("Quantity", text: $quantity)
            TextField("Unit Type", text: $unitType)
            NavigationLink("Compare", destination: ComparisonListView())
        }
    }
}