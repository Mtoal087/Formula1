//
//  MainView.swift
//  FormulaOnePersonalProject
//
//  Created by Matthew Toal on 8/24/23.
//

import SwiftUI

struct TeamView: View {
    
    @State var teams = [Team]()
    var dataService = DataService()
    
    var body: some View {
		NavigationView {
                    
                    ScrollView(showsIndicators: false) {
                        
                        Image("f1Logo")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 150)
                        
                        VStack {
                            
                            ForEach(teams) { team in
                                NavigationLink {
                                    DriverView(team: team)
                                } label: {
                                    TeamCard(team: team)
                                        .padding(.bottom, 20)
                                }

                            }
                            
                        }
                        .padding(.horizontal)
                    }
            }
            .ignoresSafeArea()
            .onAppear{
                teams = dataService.getData()
            }
			.background(Color.white)
			.preferredColorScheme(.dark)
			.accentColor(.red)
    }
}

struct TeamView_Previews: PreviewProvider {
    static var previews: some View {
        TeamView()
    }
}
