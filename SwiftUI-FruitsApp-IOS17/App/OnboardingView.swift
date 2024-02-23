//
//  OnboardingView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct OnboardingView: View {
    //MARK: - Properties
    var fruits: [Fruit] = fruitsData
    //MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }// :Loop
        }//:Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

#Preview {  OnboardingView() }
