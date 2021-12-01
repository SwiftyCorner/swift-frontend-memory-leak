//
//  ReedCaseCDApp.swift
//  ReedCaseCD
//
//  Created by Patrick Frei on 01.12.21.
//

import SwiftUI

@main
struct ReedCaseCDApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
