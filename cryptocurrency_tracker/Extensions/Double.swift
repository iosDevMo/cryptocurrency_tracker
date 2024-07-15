//
//  Double.swift
//  cryptocurrency_tracker
//
//  Created by mohamdan on 15/07/2024.
//

import Foundation

extension Double {
    
    private var currencyFormatter6: NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.usesGroupingSeparator = true
//        formatter.locale = .current      <- default value
//        formatter.currencySymbol = "$"   <- change currency symbol
//        formatter.currencyCode = "usd"   <- change currency
        formatter.maximumFractionDigits = 6
        formatter.minimumFractionDigits = 2
        return formatter
    }
    
    func asCurrencyWith6Decimals() -> String {
        let number = NSNumber(value: self)
        return currencyFormatter6.string(from: number) ?? "$0.00"
    }
}
