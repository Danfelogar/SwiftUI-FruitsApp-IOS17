//
//  SourceLinkView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview { SourceLinkView() }
