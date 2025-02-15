//
//  ImageHeader.swift
//  MakanBwank
//
//  Created by User50 on 16/04/24.
//

import SwiftUI

struct ImageHeader: View {
    var food: Food
    
    var body: some View {
        ZStack (alignment: .topLeading){
            Image(food.imageFood)
                .resizable()
                .scaledToFill()
                .frame(height: 300)
                .clipped()
            
            HStack {
                Image(systemName: "mappin.and.ellipse.circle")
                Text(food.location)
            }
            .foregroundStyle(.white)
            .padding(10)
            .background(
                UnevenRoundedRectangle(
                    cornerRadii:
                            .init(
                                topLeading:  0.0,
                                bottomTrailing: 10.0
                            )
                    
                )
                .foregroundStyle(.black.opacity(0.8))
                
            )
        }
    }
}
