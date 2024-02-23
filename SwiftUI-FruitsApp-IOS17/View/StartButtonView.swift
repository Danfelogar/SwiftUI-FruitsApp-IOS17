//
//  StartButtonView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct StartButtonView: View {
    //MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    //MARK: - Body
    var body: some View {
        Button {
           isOnboarding = false
        } label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white, lineWidth: 1.25)
            )
        }//: Btn
        .accentColor(Color.white)
    }
}

#Preview { StartButtonView().previewLayout(.sizeThatFits) }
