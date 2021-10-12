//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
  @StateObject private var modelData = ModelData()
  var body: some Scene {
    WindowGroup {
      ContentView()
        .environmentObject(modelData)
    }
  }
}
