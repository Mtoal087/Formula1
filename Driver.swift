//
//  Driver.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/24/23.
//

import Foundation

struct Driver: Identifiable {
    var id = UUID()
    var name: String
    var summary: String
    var driverNumber: String
    var imageName: String
    var longDescription: String
}
