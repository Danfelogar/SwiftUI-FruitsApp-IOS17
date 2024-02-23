//
//  SettingsLabelView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: - Propertiesa
    var labelText: String
    var labelImage: String
    //MARK: - Body
    var body: some View {
        HStack{
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview { SettingsLabelView(labelText: "Fructus", labelImage: "info.circle") }
