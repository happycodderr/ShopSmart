//
//  ShopSmartApp.swift
//  ShopSmart
//
//  Created by Admin on 26/10/2023.
//

import SwiftUI

@main
struct ShopSmartApp: App {
    let persistenceController = PersistenceController.shared
    @StateObject var viewModel = AuthViewModel()

    var body: some Scene {
        WindowGroup {
            ContentViewMain()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
                .environmentObject(viewModel)
        }
    }
}
