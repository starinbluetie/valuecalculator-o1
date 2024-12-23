import Foundation

class DiscountCalculator {
    func applyDiscount(price: Double, discountType: String) -> Double {
        switch discountType.lowercased() {
        case "half":
            return price * 0.5
        case "none":
            return price
        default:
            return price * 0.9
        }
    }
}