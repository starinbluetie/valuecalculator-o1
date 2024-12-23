import SwiftUI

struct InputFormView: View {
    @State private var name = ""
    @State private var price = ""
    @State private var quantity = ""
    @State private var unitType = ""
    @State private var discountType = ""

    var body: some View {
        Form {
            TextField("Name", text: $name)
            TextField("Price", text: $price)
            TextField("Quantity", text: $quantity)
            TextField("Unit Type", text: $unitType)
            TextField("Discount Type", text: $discountType)

            NavigationLink("Compare") {
                let p = Double(price) ?? 0
                let q = Double(quantity) ?? 1
                let discountCalc = DiscountCalculator()
                let unitConv = UnitConverter()

                let discountedPrice = discountCalc.applyDiscount(price: p, discountType: discountType)
                let convertedPrice = unitConv.convert(value: discountedPrice, fromUnit: unitType, toUnit: unitType)
                let unitPrice = q > 0 ? convertedPrice / q : 0

                ComparisonListView(
                    comparisonResults: [
                        ComparisonResult(
                            product: Product(
                                name: name,
                                price: discountedPrice,
                                quantity: q,
                                unitType: unitType
                            ),
                            unitPrice: unitPrice
                        )
                    ]
                )
            }
        }
    }
}