//
//  FoodHeader.swift
//  MakanBwank
//
//  Created by User50 on 16/04/24.
//

import SwiftUI

struct FoodHeader: View {
    var food: Food
    
    var body: some View {
        HStack {
            VStack(alignment:.leading,spacing: 8){
                Text(food.category.joined(separator: ","))
                    .font(.headline)
                    .foregroundStyle(.secondary)
                
                Text(food.heading)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(.black)
                    .foregroundStyle(.primary)
                    .lineLimit(3,
                               reservesSpace: true)
                
                Text("Chef By ,\(food.chef)")
                    .textCase(.uppercase)
                    .font(.caption)
                    .foregroundStyle(.secondary)
                    .padding(.bottom)
            }
            .padding(.top,16)
            Spacer()
            
        }
    }
}
