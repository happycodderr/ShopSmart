//
//  WelcomeView.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import SwiftUI

struct WelcomeView: View {
    
    @State private var pageIndex = 0
    
    var body: some View {
        TabView(selection: $pageIndex) {
            ForEach(OnboardingModel.list) { viewData in
                OnboardingView(page: viewData)
                    .tag(viewData.id)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
