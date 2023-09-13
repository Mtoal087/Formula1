//
//  Track.swift
//  FormulaOne
//
//  Created by Matthew Toal on 9/7/23.
//

import Foundation

struct Track: Identifiable {
	var id = UUID()
	var name: String
	var imageName: String
	var description: String
	var country: String
}
