//
//  TrackService.swift
//  FormulaOne
//
//  Created by Matthew Toal on 9/7/23.
//

import Foundation

struct TrackService {
	
	func getTracks() -> [Track] {
		return [Track(name: "Bahrain",
					  imageName: "bahrain",
					  description: "The first Bahrain Grand Prix took place on 4 April 2004, making history as the first Formula One Grand Prix to be held in the Middle East. Bahrain fought off fierce competition from elsewhere in the region to stage the race, with Egypt, Lebanon and the United Arab Emirates (UAE) all hoping for the prestige of hosting a Formula One Grand Prix (the UAE would host a Grand Prix from 2009). The Bahrain Grand Prix is usually the third race on the Formula One calendar, apart from the 2006 season, when Bahrain swapped places with the traditional opener, the Australian Grand Prix, which was pushed back to avoid a clash with the Commonwealth Games. In 2009, Bahrain was moved to the fourth race. For the 2010 season Bahrain was again the pre-season testing and season opener and Formula One cars drove the full 6.299 km (3.914 mi) \"Endurance Circuit\" to celebrate F1's 'diamond jubilee'. For 2011 however F1 was set to return to racing on the original layout used between 2004 and 2009. The race was postponed and finally cancelled due to protests in the country but F1 returned to the track for the 2012 Bahrain Grand Prix. 2014 saw the track host its first ever Grand Prix under lights, as the race was scheduled as a night race to celebrate the tenth year of Formula 1 at the circuit. Subsequent editions of the race have also been held at night. In 2020 the circuit hosted two Grands Prix, the Bahrain and Sakhir Grands Prix, after the calendar was revised following the COVID-19 pandemic with the second using an alternative layout.",
					  country: "bahrainFlag"),
				
				Track(name: "Saudi Arabia",
					  imageName: "saudiArabia",
					  description: "Named as the 'fastest street track' on the Formula One calendar with Formula One cars simulated to have average speeds in excess of 250 km/h (160 mph), the track is the second-longest track on the Formula One calendar, with only Spa-Francorchamps being longer. Additionally, three consecutive sections of the circuit have been marked out as potential DRS zones. The circuit is located on the Jeddah Corniche adjoining the Red Sea. The circuit was designed by Carsten Tilke, son of the famed circuit designer, Hermann Tilke. In November 2022, Jeddah hosted the season finale of 2022 World Touring Car Cup and also the last race of WTCR history. Instead of the Grand Prix layout, shorter 3.450 km (2.144 mi) layout was configured for that race.",
					  country: "saudiArabiaFlag"),
				
				//Track(name: <#T##String#>, imageName: <#T##String#>, description: <#T##String#>, country: <#T##String#>)
		
		]
	}
	
}
