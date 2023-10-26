//
//  Onboarding.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import Foundation

struct OnboardingModel: Identifiable {
    
    let id: Int
    let title: String
    let description: String
    let imageUrl: String
   
    static var list: [OnboardingModel] = [
        OnboardingModel(id: 0,
                        title: "Choose the products",
                        description: "Browse with ease. Select your favorite products and add them to your cart with a simple click. Our intuitive app makes shopping a cinch.",
                        imageUrl: "productList"),
        OnboardingModel(id: 1,
                        title: "Easy Payment",
                        description: "Checkout made easy. Select your preferred payment method from our many secure options and complete your purchase in just a few taps. Our app’s seamless checkout gets you paid up safely and quickly.",
                        imageUrl: "easyPayment"),
        OnboardingModel(id: 2,
                        title: "Fast Delivery",
                        description: "Delivery on your schedule. After checkout, choose a delivery time that fits your availability. Our app ensures you get your products precisely when it's convenient for you.",
                        imageUrl: "fastDelivery")
    ]
}
