//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 박근경 on 2023/09/29.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
