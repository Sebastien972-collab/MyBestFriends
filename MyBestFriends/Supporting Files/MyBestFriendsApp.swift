//
//  MyBestFriendsApp.swift
//  MyBestFriends
//
//  Created by Sébastien DAGUIN on 06/06/2023.
//

import SwiftUI

@main
struct MyBestFriendsApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
