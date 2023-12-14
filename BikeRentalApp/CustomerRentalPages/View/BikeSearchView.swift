//
//  BikeSearchView.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/15/23.
//

import SwiftUI

enum BikeSearchOptions {
    case WhatToRide
    case dates
}

struct BikeSearchView: View {
    
    var bikes: [Bike] = bikeData
    @Binding var filteredList: [Bike]
    
    //show or hide menue
    @Binding var show: Bool
    
    //filter components
    @State var typeSelection = "Any"
    let types = ["Any", "Mountain", "Road", "Hybrid"]
    
    @State var brandSelection = "Any"
    let brands = ["Any", "Santa Cruz", "Scott", "Transition", "Yeti"]
    
    @State private var selectedOption: BikeSearchOptions = .WhatToRide
    
    //calendar components
    @State var startDate = Date.now
    @State var endDate = Date.now
    @Binding var rentalDuration: Int
    @Binding var rentalPeriod: DateInterval
    
    var body: some View {
        
        VStack{
            HStack{
                if !typeSelection.isEmpty{
                    Button("Clear"){
                        typeSelection = "Any"
                        brandSelection = "Any"
                    }
                    .foregroundStyle(.green)
                    .fontWeight(.semibold)
                }
                Spacer()
                Button {
                    withAnimation(.smooth){
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.green)
                }
            }
            .padding()

            VStack(alignment: .leading){
                if selectedOption == .WhatToRide{
                    Text("What do you want to ride?")
                        .font(.title2)
                    VStack {
                        HStack{
                            Text("Type:")
                            Spacer()
                            Picker("Type", selection: $typeSelection) {
                                ForEach(types, id: \.self){
                                    Text($0)
                                }
                            }
                            .accentColor(.black)
                        }
                        .padding(.vertical)
                        Divider()
                        HStack{
                            Text("Brand:")
                            Spacer()
                            Picker("Type", selection: $brandSelection) {
                                ForEach(brands, id: \.self){
                                    Text($0)
                                }
                            }
                            .accentColor(.black)
                        }
                        .padding(.vertical)
                    }
                    //.frame(maxWidth: .infinity, maxHeight: 50)
                    .padding(.horizontal)
                    //.background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                }else{
                    CapsulView(title: "\(typeSelection), \(brandSelection)", description: "Filter Bikes")
                }
            }
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            .onTapGesture {
                withAnimation(.snappy){
                    selectedOption = .WhatToRide
                    
                }
            }
           
            //date select
            
            VStack(alignment: .leading){
                if selectedOption == .dates{
                        Text("When do you want to ride?")
                        .font(.title2)
                        Spacer(minLength: 15)
                        
                        VStack{
                            DatePicker("From", selection: $startDate, in: Date.now..., displayedComponents: .date)
                                .accentColor(.green)
                            Spacer(minLength: 2)
                            Divider()
                            Spacer(minLength: 2)
                            DatePicker("To", selection: $endDate,in: startDate..., displayedComponents: .date)
                                .accentColor(.green)
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        
                        Spacer()
                    
                    
                }else{
                    CapsulView(title: "\(startDate.formatted(date: .numeric, time: .omitted)) -  \(endDate.formatted(date: .numeric, time: .omitted))", description: "add dates")
                        .onTapGesture {
                            withAnimation(.snappy){
                                selectedOption = .dates
                            }
                        }
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 190: 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding()
            .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
        }
        Spacer()
        Button("Submit"){
            withAnimation(.smooth){
                    filteredList = bikes.filter { bike in
                    bike.type.contains(typeSelection)
                    && bike.brand.contains(brandSelection)
                    
                }
                show.toggle()
                rentalPeriod = DateInterval(start: startDate, end: endDate)
                rentalDuration = Int(((endDate.timeIntervalSinceReferenceDate - startDate.timeIntervalSinceReferenceDate)/86400)+1)
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.green)
        .cornerRadius(30)
//        .navigationDestination(isPresented: $show){
//            if let bikes = filteredList{
//                
//                BikeListView(bikes: bikes)
//                
//            }
//        }
        .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
        .padding()
        
    }
}

#Preview {
    BikeSearchView(filteredList: Binding<[Bike]>.constant(bikeData), show: .constant(false), rentalDuration: .constant(0), rentalPeriod: .constant(DateInterval(start: Date.now, end: Date.now)))
}
