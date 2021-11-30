//
//  SpendingTrackerApp.swift
//  SpendingTracker
//
//  Created by Patrick Frei on 30.11.21.
//

import SwiftUI

@main
struct SpendingTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
