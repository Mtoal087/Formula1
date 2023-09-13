//
//  MainView.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/26/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
		TabView {
			TeamView()
				.tabItem {
					VStack {
						Image(systemName: "car.side")
						Text("Teams")
					}
				}
			
			TrackView()
				.tabItem {
					VStack {
						Image(systemName: "oval.inset.filled")
						Text("Tracks")
					}
				}
		}
		.preferredColorScheme(.dark)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
