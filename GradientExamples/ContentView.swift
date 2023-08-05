//
//  ContentView.swift
//  GradientExamples
//
//  Created by MAHESHWARAN on 05/08/23.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      linearGradinent
      circularView
      radialGradient
      angularGradient
    }
    .tabViewStyle(.page)
    .indexViewStyle(.page(backgroundDisplayMode: .always))
  }
  
  private var linearGradinent: some View {
    LinearGradient(gradient: Gradient(colors: [.white, .blue]), startPoint: .leading, endPoint: .bottomTrailing)
  }
  
  private var circularView: some View {
    Circle()
      .strokeBorder(.bar, lineWidth: 20)
      .background(Circle().fill(.blue.opacity(0.6)))
      .padding()
      .shadow(color: .black, radius: 3, x: 0, y: 3)
  }
  
  private var radialGradient: some View {
    RadialGradient(gradient: Gradient(colors: [.blue, .pink]), center: .center, startRadius: 20, endRadius: 200)
  }
  
  private var angularGradient: some View {
    AngularGradient(gradient: Gradient(
      colors: [.red, .yellow, .green,
               .blue, .purple, .red]), center: .center)
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
