//
//  CircleImage.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import SwiftUI

struct CircleImage: View {
  var image: Image
  
  var body: some View {
    Image("turtlerock")
      .clipShape(Circle())
      .overlay(Circle().stroke(Color.white, lineWidth: 4))
      .shadow(radius: 7)
  }
}

struct CircleImage_Previews: PreviewProvider {
  static var previews: some View {
    CircleImage(image: Image("turtlerock"))
  }
}
