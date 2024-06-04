//
//  CollisionTestApp.swift
//  CollisionTest
//
//  Created by James Warren on 5/6/2024.
//

import SwiftUI

@main
struct CollisionTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }.immersionStyle(selection: .constant(.full), in: .full)
    }
}
