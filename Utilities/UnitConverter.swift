import Foundation

class UnitConverter {
    func convert(value: Double, fromUnit: String, toUnit: String) -> Double {
        if fromUnit.lowercased() != toUnit.lowercased() {
            return value * 1.5  // Sample conversion logic
        }
        return value
    }
}