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
    @Binding var show: Bool
    @State private var bikeSearch = ""
    @State private var selectedOption: BikeSearchOptions = .WhatToRide
    
    //calendar components
    @State private var startDate = Date()
    @State private var endDate = Date()
    
    var body: some View {
        
        VStack{
            HStack{
                Button {
                    withAnimation(.smooth){
                        show.toggle()
                    }
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.green)
                }
                Spacer()
                if !bikeSearch.isEmpty{
                    Button("Clear"){
                        bikeSearch = ""
                    }
                    .foregroundStyle(.green)
                    .fontWeight(.semibold)
                }
            }
            .padding()

            VStack(alignment: .leading){
                if selectedOption == .WhatToRide{
                    Text("What do you want to ride?")
                        .font(.title2)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search Bikes", text: $bikeSearch)
                    }
                    .frame(maxWidth: .infinity, maxHeight: 50)
                    .padding(.horizontal)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                }else{
                    CapsulView(title: "bike", description: "search bikes")
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
                            DatePicker("From", selection: $startDate, displayedComponents: .date)
                            Spacer(minLength: 2)
                            Divider()
                            Spacer(minLength: 2)
                            DatePicker("To", selection: $endDate, displayedComponents: .date)
                        }
                        .foregroundStyle(.gray)
                        .font(.subheadline)
                        
                        Spacer()
                    
                    
                }else{
                    CapsulView(title: "when", description: "add dates")
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
                show.toggle()
            }
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: 50)
        .background(Color.green)
        .cornerRadius(30)
        .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
        .padding()
    }
}

#Preview {
    BikeSearchView(show: .constant(false))
}

struct CapsulView: View {
    let title: String
    let description: String
    
    var body: some View {
        VStack{
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 10))
//        .padding()
//        .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
    }
}
