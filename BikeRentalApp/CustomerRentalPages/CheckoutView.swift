//
//  RegistrationView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/29/23.
//

import SwiftUI

struct CheckoutView: View {

    @EnvironmentObject var viewModel: AuthViewModel
    @Environment(\.dismiss) var dismiss
    
    var selectedBike: Bike?
    
    @Binding var rentalDuration: Int
    @Binding var rentalPeriod: DateInterval
    
    var body: some View {
        
        let preTaxCost = selectedBike!.price * rentalDuration
        let tax = Double(selectedBike!.price) * 0.027
        let formattedTax = String( format: "%.2f", tax)
        let totalCost = Double(preTaxCost) + tax
        let formattedTotalCost = String( format: "%.2f", totalCost)
        
        VStack(alignment: .leading){
            
            //Heading
            HStack(alignment: .firstTextBaseline){
                Text("$\(formattedTotalCost)")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Total")
                    .font(.headline)
            }
            
            Divider()
            
            Text("Dates:")
                .font(.headline)
                .padding(.top)
            
            HStack{
                Text("\(rentalPeriod.start)")
                Spacer()
                Image(systemName: "arrow.right")
                Spacer()
                Text("\(rentalPeriod.end)")
            }
            .padding()
            
            Divider()
            
            Text("Bike(s):")
                .font(.headline)
                .padding(.top)
            
            HStack(alignment: .top) {
                VStack(alignment:.leading) {
                    Text(selectedBike!.brand)
                    Text(selectedBike!.model)
                        .font(.caption)
                }
                Spacer()
                Text("$\(selectedBike!.price) Per Day")
            }
            .padding()
            
            Divider()
            
            Text("Cost Breakdown:")
                .font(.headline)
                .padding(.top)
            VStack{
                HStack{
                    Text("$\(selectedBike!.price) X \(rentalDuration) Days")
                    Spacer()
                    Text("$\(preTaxCost)")
                }
                HStack{
                    Text("Tax")
                    Spacer()
                    Text("$\(formattedTax)")
                }
                HStack{
                    Text("Total:")
                        .fontWeight(.bold)
                    Spacer()
                    Text("$\(formattedTotalCost)")
                        .fontWeight(.bold)
                }
                .padding(.vertical)
            }
            .padding()
            
            // Input Fields
            Spacer()
            HStack{
                Spacer()
                Text("Payment collected on pickup")
                    .font(.caption)
                Spacer()
            }
            Button{
                        Task{

                        }
                    } label:{
                        Text("Create Reservation")
                            .foregroundColor(.white)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .background(Color.green)
                    .cornerRadius(30)
                    .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
                    .padding([.leading, .trailing, .bottom])
        }
        .padding()
    }
}
#Preview {
    CheckoutView(rentalDuration: .constant(2), rentalPeriod: .constant(DateInterval(start: Date.now, end: Date.now)))
}

