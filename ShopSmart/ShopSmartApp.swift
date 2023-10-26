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

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
