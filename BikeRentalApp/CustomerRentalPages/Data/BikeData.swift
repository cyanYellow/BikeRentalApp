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
    Bike(type: "Mountain", 
         brand: "Santa Cruz",
         model: "Bronson",
         price: 130,
         travel: "150mm",
         image: "Santa_Cruz_Bronson_CC_X01_AXS_END_GT_050_WEB_Res-036",
         overview: "The 2023 mixed-wheel Santa Cruz Bronson extends its genre-spanning reach even further than its predecessors, taking the do-it-all 150mm to Mullet Town. With a 29er leading the way, it has mindblowing grip and smooth rollover juice, while the 27.5 rear wheel helps maintain the maneuverability and playful ride that makes the Bronson Santa Cruz's best selling bike - poppy and as loose as you like. Mountain biking rules, and the Bronson is one of the reasons why.",
         usedFor: "Trail, Enduro",
         gearing: "1 X 12",
         frameMaterial: "Carbon Fiber"),
    
    Bike(type: "Mountain",
         brand: "Santa Cruz",
         model: "5010",
         price: 130,
         travel: "130mm",
         image: "Santa-Cruz-5010-CC-X01-RSV-01-1acc4f3",
         overview: "The Santa Cruz Bicycles 5010 CC X01 Complete Mountain Bike only sees the bright side. Of everything. A court jester of the bike world, the 5010 knows how to milk every last drop of merriment out of a ride, even if it's one of those too-long and too-hot epics that have you returning in a daze, shivering, as night falls. The 5010 keeps fun flame alive with its 27.5\" wheels, slack front end, and proportional chainstays - a bike that takes all that freestyle frivolity very seriously indeed. All hail the 5010, one of the ziggiest, zaggiest mountain bikes ever created.",
         usedFor: "Enduro",
         gearing: "1 X 12",
         frameMaterial:"Carbon Fiber"),
    
    Bike(type: "Mountain",
         brand: "Transition",
         model: "Patrol",
         price: 130,
         travel: "160mm",
         image: "Transition_Patrol",
         overview: "Party in the front, legendary festival in the rear: the Transition Patrol Alloy GX Complete Mountain Bike is a perfect match for the mullet / mixed wheel layout. The Patrol is known as the life of the party, as long as we're talking about rowdy bashes that elicit response from the authorities - its TRP brakes will stay quiet always--especially during civilized cocktail affairs--but it much prefers the after party. As with all Transitions, this Patrol is built to be ridden hard. In this aluminum / Fox Performance Elite build, it's one for all-out downhill attack, leading the train down new sections, and straight up getting wild.",
         usedFor: "Trail, Enduro",
         gearing: "1 x 12",
         frameMaterial:"Carbon Fiber"),
    
    Bike(type: "Mountain",
         brand: "Transition",
         model: "Sentenal",
         price: 130,
         travel: "150mm",
         image: "Transition_Sentenal",
         overview: "It's forgiving do-it-all attitude truly blurs the lines between planted bottomless sender and playful poppy trail pony. Whether you're chasing EWS dreams or just a weekend afternoon escape, it will bring out the best in you. So easy to get acquainted with you'll find yourself sending lines, jumps and maneuvers you always felt were beyond your ability. Where before you went around, now you go over. Where you pushed up, now you pedal. Where you rolled, now you boost.",
         usedFor: "Enduro",
         gearing: "1 X 12",
         frameMaterial:"Carbon Fiber"),
    
    Bike(type: "Mountain",
         brand: "Yeti",
         model: "SB140",
         price: 130,
         travel: "140mm",
         image: "Yeti_SB140",
         overview: "Trails, trails, and also: trails. The Yeti Cycles SB140 C1 Complete Mountain Bike is the one you want, if you're interested in riding trails. Whether it's a ribbon of soft dirt meandering through grassy hills or a connect-the-paint-dots rock route in Moab, the SB140 is up for it. Big enough for regular rowdiness but agile enough to keep you working in concert with your dirt, this is, as Yeti puts it, their Mountain Bike. Yeti's added a threaded BB and kept the componentry reasonable on this model, making for a platform that'll be happily devouring trail for seasons to come. Forget the late night stats comparison sessions--this bike leaves an avid rider wanting nothing. Mountain biking is the best!",
         usedFor: "Trail",
         gearing: "1 X 12",
         frameMaterial:"Carbon Fiber"),
    
    Bike(type: "Mountain",
         brand: "Yeti",
         model: "SB160",
         price: 130,
         travel: "160mm",
         image: "Yeti_SB160",
         overview: "Wake up every morning knowing today's the day you're going to conquer that chute, clean that rough section, or set a PR on your favorite trail. Every day feels like New Bike Day on the Yeti Cycles SB160 T1 Complete Mountain Bike, a truly phenomenal piece of racing kit. This bike is made from the best carbon on the planet, featuring an improved and compact linkage design and Yeti's incredible Switch Infinity linkage. Smash, float, and finesse your way down the heaviest trails around with supreme confidence and tons of capability: the SB160 is made for it! This model features Fox Factory suspension and a bombproof DT wheelset.",
         usedFor: "Enduro",
         gearing: "1 X 12",
         frameMaterial:"Carbon Fiber"),
    
    //Road Bike
    Bike(type:"Road",
         brand: "Scott",
         model: "Addict",
         price: 85,
         travel: "",
         image: "Scott_Addict_SE",
         overview: "The new Addict RC is the new benchmark road bike when it comes to racing. It is designed to fit the needs of our UCI World Tour team Team DSM and ambitious everyday riders alike. Extremely lightweight with the best performing carbon structure to date plus completely integrated cable routing and aero features makes it a dream bike any way you look at it.",
         usedFor: "Road",
         gearing: "2 X 12",
         frameMaterial:"Carbon Fiber"),
    
    //Hybrid Bike
    Bike(type: "Hybrid", 
         brand: "Scott",
         model: "Sub 50 Mens",
         price: 50,
         travel:"",
         image: "Scott_Sub50Mens",
         overview: "The SCOTT SUB Cross 50 emphasizes comfort and convenience for touring and transportation. The SUB Cross is set up perfectly for your excursions.",
         usedFor: "Comuter, Cruiser",
         gearing: "3 X 8",
         frameMaterial:"Alloy"),
    
    Bike(type: "Hybrid",
         brand: "Scott",
         model: "Sub 50 Womens",
         price: 50,
         travel:"",
         image: "Scott_Sub50Womens",
         overview: "The SCOTT SUB Cross 50 emphasizes comfort and convenience for touring and transportation. The SUB Cross is set up perfectly for your excursions.",
         usedFor: "Comuter, Cruiser",
         gearing: "3 X 8",
         frameMaterial:"Alloy")
]
