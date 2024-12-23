import Foundation

class UnitConverter {
    func convert(value: Double, fromUnit: String, toUnit: String) -> Double {
        let from = fromUnit.lowercased()
        let to = toUnit.lowercased()

        if from == to {
            return value
        }

        switch (from, to) {
        case ("kg", "lb"):
            return value * 2.20462
        case ("lb", "kg"):
            return value * 0.453592
        case ("oz", "g"):
            return value * 28.3495
        case ("g", "oz"):
            return value * 0.035274
        default:
            return value
        }
    }
}