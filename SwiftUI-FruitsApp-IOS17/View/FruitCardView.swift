//
//  FruitCardView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: -  Properties
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    //MARK: - Body
    var body: some View {
        VStack(spacing: 20) {
            //MARK: - Fruit: Img
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            //MARK: - Fruit: Title
            Text(fruit.title)
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color: Color(red:0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
            //MARK: - Fruit: Headline
            Text(fruit.headline)
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(.horizontal, 16)
                .frame(maxWidth: 480)
            //MARK: - Btn: Start
            StartButtonView()
        }//: VStack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors),
                                   startPoint: .top,
                                   endPoint: .bottom
                                  ))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

#Preview { FruitCardView(fruit: fruitsData[0]) }
