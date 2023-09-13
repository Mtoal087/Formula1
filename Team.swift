//
//  Team.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/24/23.
//

import Foundation

struct Team: Identifiable {
    var id = UUID()
    var name: String
    var imageName: String
    var drivers: [Driver]
    var carImage: String
}
