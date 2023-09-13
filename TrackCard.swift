//
//  TrackCard.swift
//  FormulaOne
//
//  Created by Matthew Toal on 9/7/23.
//

import SwiftUI

struct TrackCard: View {
	
	var track: Track
	
	var body: some View {
		
		HStack {
			Text(track.name)
				.font(.largeTitle)
				.italic()
				.bold()
			
			Spacer()
				.frame(width: 75)
			
			Image(track.country)
				.resizable()
				.aspectRatio(contentMode: .fit)
				.cornerRadius(30)
				.frame(width: 140, height: 140)
				
		}
		.preferredColorScheme(.dark)
	}
}

struct TrackCard_Previews: PreviewProvider {
	static var previews: some View {
		TrackCard(track: Track(name: "Sakhir", imageName: "sakhir", description: "The first Bahrain Grand Prix took place on 4 April 2004, making history as the first Formula One Grand Prix to be held in the Middle East. Bahrain fought off fierce competition from elsewhere in the region to stage the race, with Egypt, Lebanon and the United Arab Emirates (UAE) all hoping for the prestige of hosting a Formula One Grand Prix (the UAE would host a Grand Prix from 2009). The Bahrain Grand Prix is usually the third race on the Formula One calendar, apart from the 2006 season, when Bahrain swapped places with the traditional opener, the Australian Grand Prix, which was pushed back to avoid a clash with the Commonwealth Games. In 2009, Bahrain was moved to the fourth race. For the 2010 season Bahrain was again the pre-season testing and season opener and Formula One cars drove the full 6.299 km (3.914 mi) \"Endurance Circuit\" to celebrate F1's 'diamond jubilee'. For 2011 however F1 was set to return to racing on the original layout used between 2004 and 2009. The race was postponed and finally cancelled due to protests in the country but F1 returned to the track for the 2012 Bahrain Grand Prix. 2014 saw the track host its first ever Grand Prix under lights, as the race was scheduled as a night race to celebrate the tenth year of Formula 1 at the circuit. Subsequent editions of the race have also been held at night. In 2020 the circuit hosted two Grands Prix, the Bahrain and Sakhir Grands Prix, after the calendar was revised following the COVID-19 pandemic with the second using an alternative layout.", country: "sakhirFlag"))
	}
}
