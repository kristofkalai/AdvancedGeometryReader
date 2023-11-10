//
//  ContentView.swift
//  Example
//
//  Created by Kristóf Kálai on 10/11/2023.
//

import SwiftUI
import AdvancedGeometryReader

struct ContentView: View {
    var body: some View {
        VStack {
            Text("GeometryReader:")
            GeometryReader { _ in
                Text("Hello, world!")
                    .border(.red)
            }
            .border(.blue)
            Text("ContentWrappingGeometryReader:")
            ContentWrappingGeometryReader { _ in
                Text("Hello, world!")
                    .border(.red)
            }
            .border(.blue)
        }
    }
}

#Preview {
    ContentView()
}
