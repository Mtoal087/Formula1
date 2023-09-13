//
//  DriverDetailView.swift
//  FormulaOne
//
//  Created by Matthew Toal on 8/25/23.
//

import SwiftUI

struct DriverDetailView: View {
    
    var driver: Driver
    
    var body: some View {
        
        VStack (spacing: 20) {
            VStack{
                Image("f1Logo")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150)
                    
                
                Image(driver.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 375)
                    .cornerRadius(20)
                    .padding(.top, 20)
            }
            
            ScrollView  {
                VStack (alignment: .leading, spacing: 20) {
                    Text(driver.name)
                        .font(.largeTitle)
                        .bold()
                    
                    Text("#\(driver.driverNumber)")
                        .font(.title)
                        .bold()
                        .italic()
                    
                    Text(driver.longDescription)
                        .multilineTextAlignment(.leading)
						.font(.title2)
                }
                .padding(.bottom, 20)
            }
            .padding(.horizontal)
        }
		.preferredColorScheme(.dark)
		.foregroundColor(.white)
    }
}

struct DriverDetailView_Previews: PreviewProvider {
    static var previews: some View {
        DriverDetailView(driver: Driver(name: "Max Verstappen",
                                        summary: "Max Emilian Verstappen was born 30 September 1997 is a Dutch and Belgian racing driver and the 2021 and 2022 Formula One World Champion. He competes under the Dutch flag in Formula One with Red Bull Racing.",
                                        driverNumber: "25",
                                        imageName: "maxVerstappen",
                                       longDescription: "Max is the son of racing drivers Jos Verstappen, who also competed in Formula One, and Sophie Kumpen. He had a successful run in junior karting and single-seater categories – including KF3, WSK World Series, KZ2 and European Formula 3 – beating several records. At the 2015 Australian Grand Prix, when he was aged 17 years, 166 days, he became the youngest driver to compete in Formula One. After spending the 2015 season with Scuderia Toro Rosso, Verstappen started his 2016 campaign with the Italian team before being promoted to parent team Red Bull Racing after four races as a replacement for Daniil Kvyat. At the age of 18, he won the 2016 Spanish Grand Prix on his debut for Red Bull Racing, becoming the youngest-ever driver and the first After winning the 2021 Abu Dhabi Grand Prix, Verstappen became the first Dutch driver to win the Formula One World Championship, and the 34th Formula One World Drivers' Champion. He won his second consecutive Formula One championship the next season. As of the 2023 Belgian Grand Prix, Verstappen has achieved 45 victories and 27 pole positions. He scored the first hat-trick of his career at the 2021 French Grand Prix and his first grand slam at the 2021 Austrian Grand Prix. He scored his second grand slam at the 2022 Emilia Romagna Grand Prix and his third at the 2023 Spanish Grand Prix. Verstappen is set to remain at Red Bull until at least the end of the 2028 season after signing a contract extension."))
    }
}
