//
//  FoodCart.swift
//  MakanBwank
//
//  Created by User50 on 16/04/24.
//

import SwiftUI

struct FoodCard: View {
    var food: Food
    
    var body: some View {
        VStack {
            ImageHeader(food: food)
            
            FoodHeader(food: food)
                .padding([.top,.horizontal])
            
            
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay{
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB,red: 149/25,
                              green: 165/255,
                              blue: 166/255,
                              opacity: 0.2
                             ),
                        lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        }
        
    }
}

#Preview {
    FoodCard(food: Food.foodData[1])
        .padding()
}




