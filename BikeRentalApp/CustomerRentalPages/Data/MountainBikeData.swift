//
//  Bike Data.swift
//  BikeRentalApp
//
//  Created by Willie Green on 11/3/23.
//

import SwiftUI

// List of Mountain Bikes in rental database

let bikeData: [Bike] = [
    
    //Mountain Bike
    Bike(type: "Mountain", brand: "Santa Cruz", model: "Bronson", price: 130, travel: "150mm", image: "Santa_Cruz_Bronson_CC_X01_AXS_END_GT_050_WEB_Res-036"),
    Bike(type: "Mountain",brand: "Santa Cruz", model: "5010", price: 130, travel: "130mm", image: "Santa-Cruz-5010-CC-X01-RSV-01-1acc4f3"),
    Bike(type: "Mountain",brand: "Transition", model: "Patrol", price: 130, travel: "160mm", image: "Transition_Patrol"),
    Bike(type: "Mountain",brand: "Transition", model: "Sentenal", price: 130, travel: "150mm", image: "Transition_Sentenal"),
    Bike(type: "Mountain",brand: "Yeti", model: "SB140", price: 130, travel: "140mm", image: "Yeti_SB140"),
    Bike(type: "Mountain",brand: "Yeti", model: "SB160", price: 130, travel: "160mm", image: "Yeti_SB160"),
    
    //Road Bike
    Bike(type:"Road", brand: "Scott", model: "Addict", price: 85, travel: "", image: "Scott_Addict_SE"),
    
    //Hybrid Bike
    Bike(type: "Hybrid", brand: "Scott", model: "Sub 50 Mens", price: 50, travel:"", image: "Scott_Sub50Mens"),
    Bike(type: "Hybrid",brand: "Scott", model: "Sub 50 Womens", price: 50, travel:"", image: "Scott_Sub50Womens")
 
]
