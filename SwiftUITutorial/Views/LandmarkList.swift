//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    NavigationView {
      List(landmarks) { landmark in
        NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
          LandmarkRow(landmark: landmark)
        }
      }
      .navigationTitle("Landmarks")
    }
  }
}

struct LandmarkList_Previews: PreviewProvider {
  static var previews: some View {
    ForEach([
      "iPhone SE (2nd generation)",
      "iPhone XS Max",
      "iPad Pro (12.9-inch) (5th generation)",
    ], id: \.self) { deviceName in
      LandmarkList()
        .previewDevice(PreviewDevice(rawValue: deviceName))
        .previewDisplayName(deviceName)
      }
  }
}
