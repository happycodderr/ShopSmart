//
//  ContentViewMain.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import SwiftUI

struct ContentViewMain: View {
    
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
//        Group {
            if viewModel.userSession != nil {
                
            } else {
                LoginView(viewModel: viewModel)
            }
//        }
    }
}

struct ContentViewMain_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewMain()
    }
}
