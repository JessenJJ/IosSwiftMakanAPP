//
//  Food.swift
//  MakanBwank
//
//  Created by User50 on 16/04/24.
//

import Foundation

struct Food: Identifiable{
    let id = UUID()
    let imageFood: String
    let location: String
    let category: [String]
    let heading: String
    let chef: String
}

// MARK: - DUMMY DATA
extension Food {
    static let foodData: [Food] = [
        Food(imageFood: "carbonara",
             location: "Ristorante Bella Cucina",
             category: ["Dine in","Take away", "Delivery"],
             heading: "Indulge in Creamy Linguine Carbonara!!",
             chef: "Giovanni Delizioso"),
        Food(imageFood: "friedrice",
             location: "Warung Rasa Nusantara",
             category: ["Delivery"],
             heading: "Spicy Fried Rice with Sizzle Beef.",
             chef: "Ibu Siti"),
        Food(imageFood: "mieayam",
             location: "Gacoan Sumedang",
             category: ["Dine in","Take away", "Delivery"],
             heading: "Spicy Noodle Soup With Japanese Wagyu",
             chef: "Mba Joni"),
        Food(imageFood: "salmonsteak",
             location: "Regreto Faruno Irigantio",
             category: ["Dine in","Take away"],
             heading: "Salmon Steak with truffle sauce and caviar",
             chef: "Mariano Sungtulodo")
    ]
}
