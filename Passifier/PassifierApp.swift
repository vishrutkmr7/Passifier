//
//  PassifierApp.swift
//  Passifier
//
//  Created by Vishrut Jha on 8/4/24.
//

import SwiftUI
import SwiftData

@main
struct PassifierApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Pass.self)
    }
}
