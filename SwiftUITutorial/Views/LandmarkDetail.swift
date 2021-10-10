//
//  LandmarkDetail.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import SwiftUI

struct LandmarkDetail: View {
  var landmark: Landmark
  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300)
        .ignoresSafeArea(edges: .top)
      
      CircleImage(image: landmark.image)
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
          .foregroundColor(.black)
        
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
      }
      .padding()
      
      Divider()
      
      Text("About \(landmark.name)")
      
      Text(landmark.description)
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

struct LandmarkDetail_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      LandmarkDetail(landmark: landmarks[0])
    }
  }
}
