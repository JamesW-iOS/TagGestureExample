//
//  ImmersiveView.swift
//  CollisionTest
//
//  Created by James Warren on 5/6/2024.
//

import SwiftUI
import RealityKit
import RealityKitContent

struct ImmersiveView: View {
    @State private var tapCount = 0
    var body: some View {
        RealityView { content in
            let sphere = ModelEntity(mesh: .generateSphere(radius: 50), materials: [UnlitMaterial(color: .red)])
            sphere.setPosition([500, 0, 0], relativeTo: nil)
            sphere.components.set([
                InputTargetComponent(),
                CollisionComponent(shapes: [.generateBox(width: 250, height: 250, depth: 250)]),
            ])
            content.add(sphere)
        }
        .gesture(
            SpatialTapGesture()
                .targetedToAnyEntity()
                .onEnded { value in
                    tapCount += 1
                    print(tapCount)
                }
        )
    }
}

#Preview(immersionStyle: .full) {
    ImmersiveView()
}
