//
//  TrackView.swift
//  FormulaOne
//
//  Created by Matthew Toal on 9/7/23.
//

import SwiftUI

struct TrackView: View {
	
	@State var tracks = [Track]()
	@State var trackService = TrackService()
	
    var body: some View {
		NavigationView {
			ScrollView (showsIndicators: false) {
				
				Image("f1Logo")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 150)
				
				VStack {
					
					ForEach(tracks) { track in
						NavigationLink {
							//individual track views
						} label: {
							TrackCard(track: track)
								.padding(.bottom, 20)
						}

					}
					
				}
				.padding(.horizontal)
			}
		}
		.ignoresSafeArea()
		.onAppear {
			tracks = trackService.getTracks()
		}
		.foregroundColor(.white)
		.preferredColorScheme(.dark)
		.accentColor(.red)
	}
}

struct TrackView_Previews: PreviewProvider {
    static var previews: some View {
        TrackView()
    }
}
