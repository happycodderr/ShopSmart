//
//  OnboardingView.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import SwiftUI

struct OnboardingView: View {
    
    var page: OnboardingModel
    
    @State private var showReg: Bool = false
    @State private var isAnimated: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            Image(page.imageUrl)
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .padding()
            
            Text(page.title).font(.title2)
                .fontWeight(.bold)
            
            Text(page.description).font(.subheadline)
                .fontWeight(.medium)
                .frame(width: 300)
            
            Button {
                showReg = true
            } label: {
                Text("Start Exploring")
                    .font(.headline)
                    .foregroundColor(.white)
                    .frame(width:UIScreen.main.bounds.width - 90, height: 45)
            }
            .background(Color(.systemBlue))
            .cornerRadius(10)
            .padding(.top, 20)
            .shadow(radius: 10)
            Spacer()
        }
        .fullScreenCover(isPresented: $showReg) {
            LoginView()
        }
        .padding()
        .onAppear(perform: {
            isAnimated = false
            withAnimation(.easeOut(duration: 0.6)) {
                self.isAnimated = true
            }
        })
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(page: OnboardingModel.list.first!)
    }
}
