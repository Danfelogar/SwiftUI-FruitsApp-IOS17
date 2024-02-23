//
//  SetttingsRowView.swift
//  SwiftUI-FruitsApp-IOS17
//
//  Created by Daniel Felipe on 17/02/24.
//

import SwiftUI

struct SetttingsRowView: View {
    //MARK: - Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    //MARK: - Body
    var body: some View {
        VStack{
            Divider().padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                } else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}

#Preview {
    //SetttingsRowView(name: "Developer", content: "Danfelogar")
    SetttingsRowView(name: "Webside", linkLabel: "Danfelogar Web", linkDestination: "DanfelogarWeb.com")
}
