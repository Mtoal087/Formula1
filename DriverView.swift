//
//  DriverView.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/25/23.
//

import SwiftUI

struct DriverView: View {
    
    var team: Team
    
    var body: some View {
        ScrollView (showsIndicators: false) {
            
            HStack {
            	Image("f1Logo")
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 150)
				
				Spacer()
				
				Image(team.imageName)
					.resizable()
					.aspectRatio(contentMode: .fit)
					.frame(width: 100)
            }
            
            VStack {
                
                ForEach(team.drivers) { driver in
                    
                    NavigationLink {
                        DriverDetailView(driver: driver)
                    } label: {
                        DriverRow(driver: driver)
                            .padding(.bottom, 50)
                        
                    }
					.buttonStyle(.automatic)
                    
                }
                
            }
            
        }
        .padding(.horizontal)
		.preferredColorScheme(.dark)
    }
}

struct DriverView_Previews: PreviewProvider {
    static var previews: some View {
        DriverView(team: Team(name: "Red Bull Racing",
                              imageName: "redBullLogo",
                              drivers: [
                                 Driver(name: "Sergio Perez",
                                        summary: "Sergio Michel \"Checo\" Pérez Mendoza was born 26 January 1990 is a Mexican racing driver who races in Formula One for Red Bull Racing, having previously driven for Sauber, McLaren, Force India, and Racing Point. He has won six F1 Grand Prix races. He won his first Grand Prix driving for Racing Point at the 2020 Sakhir Grand Prix, breaking the record for the number of starts before a race win at 190.",
                                        driverNumber: "33",
                                        imageName: "sergioPerez",
                                       longDescription: "Sergio earned his first Formula One pole position at the 2022 Saudi Arabian Grand Prix, breaking the record for the most races before a first pole position at 215. Up until 2012, Pérez was a member of the Ferrari Driver Academy. He made his Formula One debut driving for Sauber during the 2011 season. He took his first Formula One podium at the 2012 Malaysian Grand Prix with Sauber. Due to his young age and performance, he was referred to as \"The Mexican Wunderkind\". Pérez joined McLaren for the 2013 season, but the team did not score a single podium finish. Subsequently, the team decided to replace Pérez with Kevin Magnussen for the 2014 season. Force India signed Pérez for the 2014 season with a €15 million contract. He remained with Force India when the team went into administration in 2018 and reformed as the Racing Point team for 2019. In 2019, Racing Point signed a three-year extension with Pérez. In September 2020, Racing Point announced that Pérez would be leaving the team at the end of the season as Sebastian Vettel, a four-time F1 world champion, had been signed to replace him. In December, Pérez signed with Red Bull Racing for the 2021 season. He has a contract with Red Bull Racing until the end of the 2024 season."),
                                 Driver(name: "Max Verstappen",
                                        summary: "Max Emilian Verstappen was born 30 September 1997 is a Dutch and Belgian racing driver and the 2021 and 2022 Formula One World Champion. He competes under the Dutch flag in Formula One with Red Bull Racing.",
                                        driverNumber: "25",
                                        imageName: "maxVerstappen",
                                       longDescription: "Max is the son of racing drivers Jos Verstappen, who also competed in Formula One, and Sophie Kumpen. He had a successful run in junior karting and single-seater categories – including KF3, WSK World Series, KZ2 and European Formula 3 – beating several records. At the 2015 Australian Grand Prix, when he was aged 17 years, 166 days, he became the youngest driver to compete in Formula One. After spending the 2015 season with Scuderia Toro Rosso, Verstappen started his 2016 campaign with the Italian team before being promoted to parent team Red Bull Racing after four races as a replacement for Daniil Kvyat. At the age of 18, he won the 2016 Spanish Grand Prix on his debut for Red Bull Racing, becoming the youngest-ever driver and the first After winning the 2021 Abu Dhabi Grand Prix, Verstappen became the first Dutch driver to win the Formula One World Championship, and the 34th Formula One World Drivers' Champion. He won his second consecutive Formula One championship the next season. As of the 2023 Belgian Grand Prix, Verstappen has achieved 45 victories and 27 pole positions. He scored the first hat-trick of his career at the 2021 French Grand Prix and his first grand slam at the 2021 Austrian Grand Prix. He scored his second grand slam at the 2022 Emilia Romagna Grand Prix and his third at the 2023 Spanish Grand Prix. Verstappen is set to remain at Red Bull until at least the end of the 2028 season after signing a contract extension.")
                                 ],
                             carImage: "redBullCar"))
    }
}
