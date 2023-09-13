//
//  DriverCard.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/24/23.
//

import SwiftUI

struct DriverCard: View {
    
    var driver: Driver
    
    var body: some View {
        ZStack {
            
            Rectangle()
                .background {
                    Image(driver.imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.75)
                .cornerRadius(15)
            
            VStack (alignment: .leading) {
                Text(driver.name)
                    .font(.largeTitle)
                    .bold()
                
                Spacer()
                
                Text(driver.summary)
                    .multilineTextAlignment(.leading)
            }
            .padding()
            .foregroundColor(.white)
        }
        .frame(height: 400)
		.preferredColorScheme(.dark)
		.foregroundColor(.white)
    }
}

struct DriverCard_Previews: PreviewProvider {
    static var previews: some View {
        DriverCard(driver: Driver(name: "Sergio Perez", summary: "Sergio Michel \"Checo\" Pérez Mendoza was born 26 January 1990 is a Mexican racing driver who races in Formula One for Red Bull Racing, having previously driven for Sauber, McLaren, Force India, and Racing Point. He has won six F1 Grand Prix races. He won his first Grand Prix driving for Racing Point at the 2020 Sakhir Grand Prix, breaking the record for the number of starts before a race win at 190.", driverNumber: "33", imageName: "sergioPerez", longDescription: "Sergio earned his first Formula One pole position at the 2022 Saudi Arabian Grand Prix, breaking the record for the most races before a first pole position at 215. Up until 2012, Pérez was a member of the Ferrari Driver Academy. He made his Formula One debut driving for Sauber during the 2011 season. He took his first Formula One podium at the 2012 Malaysian Grand Prix with Sauber. Due to his young age and performance, he was referred to as \"The Mexican Wunderkind\". Pérez joined McLaren for the 2013 season, but the team did not score a single podium finish. Subsequently, the team decided to replace Pérez with Kevin Magnussen for the 2014 season. Force India signed Pérez for the 2014 season with a €15 million contract. He remained with Force India when the team went into administration in 2018 and reformed as the Racing Point team for 2019. In 2019, Racing Point signed a three-year extension with Pérez. In September 2020, Racing Point announced that Pérez would be leaving the team at the end of the season as Sebastian Vettel, a four-time F1 world champion, had been signed to replace him. In December, Pérez signed with Red Bull Racing for the 2021 season. He has a contract with Red Bull Racing until the end of the 2024 season."))
    }
}
