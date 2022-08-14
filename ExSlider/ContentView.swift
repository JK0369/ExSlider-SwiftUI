//
//  ContentView.swift
//  ExSlider
//
//  Created by 김종권 on 2022/08/14.
//

import SwiftUI

struct ContentView: View {
  @State private var value = 30.0
  @State private var isEditing = false
  
  var body: some View {
    VStack {
      // base
//      Slider(
//        value: $value,
//        in: 0...100
//      ) { editing in
//          isEditing = editing
//        }
//      Text("\(value)")
//        .foregroundColor(isEditing ? .red : .blue)
      
//      Slider(
//        value: $value,
//        in: 0...100,
//        step: 5
//      ) { editing in
//        isEditing = editing
//      }
//      Text("\(value)")
//        .foregroundColor(isEditing ? .red : .blue)
      
      Slider(
        value: $value,
        in: 0...100,
        step: 5
      ) {
        Text("Title")
      } minimumValueLabel: {
        Text("0")
      } maximumValueLabel: {
        Text("100")
      } onEditingChanged: { editing in
        isEditing = editing
      }
      Text("\(value)")
        .foregroundColor(isEditing ? .red : .blue)
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
