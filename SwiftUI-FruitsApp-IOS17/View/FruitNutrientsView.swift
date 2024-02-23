//
//  FruitNutrientsView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy","Sugar","Fat","Protein","Vitamins", "Minerals"]
    //MARK: - Body
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider()
                        .padding(.vertical,2)

                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//:GroupBox
    }
}

#Preview { FruitNutrientsView(fruit: fruitsData[0]) }
