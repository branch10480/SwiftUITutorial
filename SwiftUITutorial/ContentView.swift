//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack {
      MapView()
        .frame(height: 300)
        .ignoresSafeArea(edges: .top)
      
      CircleImage()
        .offset(y: -130)
        .padding(.bottom, -130)
      
      VStack(alignment: .leading) {
        Text("Turtle Rock")
          .font(.title)
          .foregroundColor(.black)
        
        HStack {
          Text("Joshua Tree National Park")
          Spacer()
          Text("California")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
      }
      .padding()
      
      Divider()
      
      Text("About Turtle Rock")
      
      Text("Descriptive text goes here.")
      
      Spacer()
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
