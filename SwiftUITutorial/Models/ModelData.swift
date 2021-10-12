//
//  ModelData.swift
//  SwiftUITutorial
//
//  Created by branch10480 on 2021/10/10.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
  @Published var landmarks: [Landmark] = load("landmarkData.json")
}

func load<T: Decodable>(_ fileName: String) -> T {
  let data: Data
  guard let file = Bundle.main.url(forResource: fileName, withExtension: nil)
  else {
    fatalError("Couldn't find \(fileName) in main bundle.")
  }
  
  do {
    data = try Data(contentsOf: file)
  }
  catch (let e) {
    fatalError(e.localizedDescription)
  }
  
  do {
    let decoder = JSONDecoder()
    return try decoder.decode(T.self, from: data)
  }
  catch (let e) {
    fatalError(e.localizedDescription)
  }
}
