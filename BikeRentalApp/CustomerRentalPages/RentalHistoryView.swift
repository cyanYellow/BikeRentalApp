//
//  RentalHistoryView.swift
//  Evo Bike Rental
//
//  Created by Willie Green on 12/17/23.
//

import Foundation
import SwiftUI

struct RentalHistoryView: View {
    
    var body: some View{
        VStack{
            Divider()
            Collapsible(
                label: { Text("Upcomming Reservations") },
                content: {
                    VStack(alignment: .leading){
                        HStack{
                            Text("\(Date.now.formatted(date: .numeric, time: .omitted))")
                            //Spacer()
                            Image(systemName: "arrow.right")
                            //Spacer()
                            Text("\(Date.now.formatted(date: .numeric, time: .omitted))")
                        }
                        HStack(alignment: .firstTextBaseline){
                            Text("Santa Cruz,")
                            Text("Bronson")
                                .font(.callout)
                        }
                        HStack {
                            Text("$130")
                            Spacer()
                        }
                        
                    }
                    //.padding()
                }
            )
            Divider()
        }
        .padding()
    }
}
#Preview {
    RentalHistoryView()
}
