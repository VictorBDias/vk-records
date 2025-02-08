//
//  vk_recordsApp.swift
//  vk-records
//
//  Created by Victor Batisttete Dias on 08/02/25.
//

import SwiftUI
import SwiftData

@main
struct vk_recordsApp: App {
    init() {
        // Set the appearance of the navigation bar title
        let appearance = UINavigationBarAppearance()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = UIColor(Color.background)
        
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView().background(Color.background.ignoresSafeArea())
        }
        .modelContainer(sharedModelContainer)
    }
}
