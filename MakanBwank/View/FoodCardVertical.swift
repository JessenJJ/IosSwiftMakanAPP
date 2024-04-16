//
//  FoodCardVertical.swift
//  MakanBwank
//
//  Created by User50 on 16/04/24.
//

import SwiftUI

struct FoodCardVertical: View {
    var body: some View {
        VStack{
            Text(currentFoodDate())
                .foregroundStyle(.secondary)
                .padding(.leading)
            
            Text("Your Last Viewed")
                .font(.system(.title,design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.leading)
        
        
        
        
        ScrollView(.vertical,showsIndicators: false){
            VStack(spacing:20){
                ForEach(Food.foodData) {
                    food in FoodCard(food: food)
                        .frame(width:300)
                }
            }
            
            .padding()
        }
        }
    }
    private func currentFoodDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        
        let results = formatter.string(from:Date())
        return results
        
    }
    
}

#Preview {
    FoodCardVertical()
}
