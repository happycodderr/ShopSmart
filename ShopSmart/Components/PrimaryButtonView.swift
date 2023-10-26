//
//  PrimaryButtonView.swift
//  EasyShopee
//
//  Created by Admin on 24/10/2023.
//

import SwiftUI

struct PrimaryButtonView: View {
    let image: String
    let title: String
    var body: some View {
        Button {
            print("Log user in")
        } label: {
            HStack  {
                Text (title)
                Image(systemName: image)
            }
            .foregroundColor(.white)
            .frame(width:UIScreen.main.bounds.width - 50, height: 45)
        }
        .background(Color(.systemBlue))
        .cornerRadius(10)
        .padding(.top, 20)
        
    }
}

struct PrimaryButtonView_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButtonView(image: "arrow.right", title: "Sign in")
    }
}
