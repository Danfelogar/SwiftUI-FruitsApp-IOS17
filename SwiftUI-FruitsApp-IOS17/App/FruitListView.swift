//
//  ContentView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct FruitListView: View {
    //MARK: - Properties
    @State private var isShowingSettings: Bool = false
    
    var fruits: [Fruit] = fruitsData
    //MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }//: Btn
                .sheet(isPresented: $isShowingSettings) {
                    SettingsView()
                }
            }
        }// : Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitListView()
}
