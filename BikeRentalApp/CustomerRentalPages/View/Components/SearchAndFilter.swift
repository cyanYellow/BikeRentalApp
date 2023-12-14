//
//  SearchAndFilter.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/15/23.
//

import SwiftUI

struct SearchAndFilter: View{
    var body: some View{
        HStack{
            HStack{
                Image(systemName: "line.3.horizontal.decrease.circle")
                VStack(alignment: .leading, spacing: 2){
                    Text("Filter")
                        .fontWeight(.semibold)
                    
    //                Text("Any Date")
    //                    .font(.caption2)
    //                    .foregroundStyle(.gray)
                }
                
    //            Button(
    //                action: {
    //
    //                }, label: {
    //                Image(systemName: "arrow.down.circle")
    //                        .foregroundStyle(.gray)
    //            })
            }
            .padding(.horizontal)
            .padding(.vertical, 10)
            .overlay{
                Capsule()
                    .stroke(lineWidth: 0.5)
                    .foregroundStyle(Color(.systemGray4))
                    .shadow(color: (Color(red: 0, green: 0, blue: 0, opacity: 0.4)), radius: 5, x:5, y: 5)
            }
            .padding()
        }
    }
}

#Preview {
    SearchAndFilter()
}
