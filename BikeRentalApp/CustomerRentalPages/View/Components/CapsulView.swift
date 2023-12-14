//
//  CapsulView.swift
//  Evo Bike Rental
//
//  Created by Willie Green on 12/13/23.
//

import Foundation
import SwiftUI

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
    }
}
